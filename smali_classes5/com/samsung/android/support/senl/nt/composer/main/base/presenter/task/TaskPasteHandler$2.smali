.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->executeTaskAddPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

.field public final synthetic val$pdfInputs:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$2;->val$pdfInputs:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$2;->val$pdfInputs:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;

    iget p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;->mErrorCode:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->onErrorToAddPdf(I)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$2;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$2;->val$pdfInputs:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;

    iget v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;->mFinalPageIndex:I

    iget p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;->mErrorCode:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->onSuccessToAddPdf(II)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$2;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V

    return-void
.end method
