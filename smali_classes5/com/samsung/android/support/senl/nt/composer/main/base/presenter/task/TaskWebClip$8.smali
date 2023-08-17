.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->addPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

.field public final synthetic val$addPdfDone:[Z

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

.field public final synthetic val$mPdfUriPath:Ljava/util/List;

.field public final synthetic val$pdfUriList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;Ljava/util/List;Ljava/util/List;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$pdfUriList:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$mPdfUriPath:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$addPdfDone:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageVerticalPadding(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v0

    new-instance v11, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$pdfUriList:Ljava/util/List;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$mPdfUriPath:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Z

    move-result v10

    move-object v1, v11

    move v9, v0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Ljava/util/List;Ljava/util/List;IZ)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;-><init>()V

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->t(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setStorageChecker(Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)V

    return-void
.end method
