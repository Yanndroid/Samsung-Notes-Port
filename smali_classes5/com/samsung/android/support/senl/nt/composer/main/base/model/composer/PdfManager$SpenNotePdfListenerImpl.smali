.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;
.super Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpenNotePdfListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$SpenNotePdfListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager$AttachPdfStateListener;->onProgressChanged(I)V

    :cond_0
    return-void
.end method
