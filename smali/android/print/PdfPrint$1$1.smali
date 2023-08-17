.class Landroid/print/PdfPrint$1$1;
.super Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PdfPrint$1;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/print/PdfPrint$1;


# direct methods
.method public constructor <init>(Landroid/print/PdfPrint$1;)V
    .locals 0

    iput-object p1, p0, Landroid/print/PdfPrint$1$1;->this$1:Landroid/print/PdfPrint$1;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    invoke-static {}, Landroid/print/PdfPrint;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWriteCancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/print/PdfPrint$1$1;->this$1:Landroid/print/PdfPrint$1;

    iget-object v0, v0, Landroid/print/PdfPrint$1;->val$callBack:Landroid/print/PdfPrint$CallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/print/PdfPrint$CallBack;->onLayoutCancelled()V

    :cond_0
    return-void
.end method

.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/print/PdfPrint;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWriteFailed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/print/PdfPrint$1$1;->this$1:Landroid/print/PdfPrint$1;

    iget-object v0, v0, Landroid/print/PdfPrint$1;->val$callBack:Landroid/print/PdfPrint$CallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/print/PdfPrint$CallBack;->onLayoutFailed(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    invoke-static {}, Landroid/print/PdfPrint;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onWriteFinished"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroid/print/PdfPrint$1$1;->this$1:Landroid/print/PdfPrint$1;

    iget-object p1, p1, Landroid/print/PdfPrint$1;->val$callBack:Landroid/print/PdfPrint$CallBack;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/print/PdfPrint$1$1;->this$1:Landroid/print/PdfPrint$1;

    iget-object v1, v1, Landroid/print/PdfPrint$1;->val$path:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/print/PdfPrint$1$1;->this$1:Landroid/print/PdfPrint$1;

    iget-object v1, v1, Landroid/print/PdfPrint$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/print/PdfPrint$CallBack;->onWriteFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
