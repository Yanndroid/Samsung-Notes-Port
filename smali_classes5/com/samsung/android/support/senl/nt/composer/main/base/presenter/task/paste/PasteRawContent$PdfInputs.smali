.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PdfInputs"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPdfUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onErrorToAddPdf(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;->release()V

    return-void
.end method

.method public onSuccessToAddPdf(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    const/4 p2, 0x1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    add-int/2addr p1, p2

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    iput-boolean p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mUpdateInvertBG:Z

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
