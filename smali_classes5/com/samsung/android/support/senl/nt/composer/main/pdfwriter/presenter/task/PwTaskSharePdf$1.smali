.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->d(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->c(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V

    :goto_0
    return-void
.end method
