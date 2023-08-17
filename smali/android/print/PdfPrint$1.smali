.class Landroid/print/PdfPrint$1;
.super Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PdfPrint;->print(Landroid/print/PrintDocumentAdapter;Ljava/io/File;Ljava/lang/String;Landroid/print/PdfPrint$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/print/PdfPrint;

.field public final synthetic val$callBack:Landroid/print/PdfPrint$CallBack;

.field public final synthetic val$fileName:Ljava/lang/String;

.field public final synthetic val$path:Ljava/io/File;

.field public final synthetic val$printAdapter:Landroid/print/PrintDocumentAdapter;


# direct methods
.method public constructor <init>(Landroid/print/PdfPrint;Landroid/print/PdfPrint$CallBack;Landroid/print/PrintDocumentAdapter;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/print/PdfPrint$1;->this$0:Landroid/print/PdfPrint;

    iput-object p2, p0, Landroid/print/PdfPrint$1;->val$callBack:Landroid/print/PdfPrint$CallBack;

    iput-object p3, p0, Landroid/print/PdfPrint$1;->val$printAdapter:Landroid/print/PrintDocumentAdapter;

    iput-object p4, p0, Landroid/print/PdfPrint$1;->val$path:Ljava/io/File;

    iput-object p5, p0, Landroid/print/PdfPrint$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutCancelled()V
    .locals 2

    invoke-static {}, Landroid/print/PdfPrint;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLayoutCancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/print/PdfPrint$1;->val$callBack:Landroid/print/PdfPrint$CallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/print/PdfPrint$CallBack;->onLayoutCancelled()V

    :cond_0
    return-void
.end method

.method public onLayoutFailed(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {}, Landroid/print/PdfPrint;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLayoutFailed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/print/PdfPrint$1;->val$callBack:Landroid/print/PdfPrint$CallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/print/PdfPrint$CallBack;->onLayoutFailed(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .locals 3

    iget-object p1, p0, Landroid/print/PdfPrint$1;->val$printAdapter:Landroid/print/PrintDocumentAdapter;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/print/PageRange;

    sget-object v0, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Landroid/print/PdfPrint$1;->this$0:Landroid/print/PdfPrint;

    invoke-static {v0}, Landroid/print/PdfPrint;->b(Landroid/print/PdfPrint;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v2, Landroid/print/PdfPrint$1$1;

    invoke-direct {v2, p0}, Landroid/print/PdfPrint$1$1;-><init>(Landroid/print/PdfPrint$1;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method
