.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->handleGetContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Landroid/content/ClipData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipDataBackupPath;->getBackupPathFromHtml(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipDataBackupPath;->isNoteClip(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->o(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->checkAvailableStateToAdd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->t(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;I)V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->isPageData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v13, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    new-instance v14, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v6

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v7

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v8

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->q(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v9

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v10

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)I

    move-result v12

    move-object v2, v14

    move-object v11, v1

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PastePage;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Ljava/lang/String;I)V

    invoke-static {v13, v14}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->r(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;)V

    goto/16 :goto_0

    :cond_1
    iget-object v12, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    new-instance v13, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v6

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v7

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v8

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)I

    move-result v10

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Landroid/graphics/PointF;

    move-result-object v11

    move-object v2, v13

    move-object v9, v1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;ILandroid/graphics/PointF;)V

    invoke-static {v12, v13}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->r(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    new-instance v15, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1$2;

    invoke-direct {v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;)V

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v6

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Landroid/content/ClipData;

    move-result-object v7

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v8

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v9

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->o(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    move-result-object v10

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)I

    move-result v11

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Landroid/graphics/PointF;

    move-result-object v12

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Z

    move-result v14

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Ljava/util/concurrent/ExecutorService;

    move-result-object v16

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;

    move-result-object v17

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Z

    move-result v18

    move-object v2, v15

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v2 .. v17}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$Construct;Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;ILandroid/graphics/PointF;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;Z)V

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->r(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;)V

    move-object/from16 v0, p0

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->readyContents()V

    return-void
.end method
