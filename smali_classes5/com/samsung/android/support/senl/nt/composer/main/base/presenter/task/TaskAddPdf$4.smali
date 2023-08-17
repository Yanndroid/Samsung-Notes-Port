.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->showPwdDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$4;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$4;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "post#showPwdDialog#onResult#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$4;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_CANCEL:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$4$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$4$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$4;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
