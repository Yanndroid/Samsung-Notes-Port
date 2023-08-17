.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskLoadPdfThumbnails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
