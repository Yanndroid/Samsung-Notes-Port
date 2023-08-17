.class public Lcom/samsung/android/support/senl/nt/model/repository/pdfwriter/PDFWriterRepositoryFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPDFWriterRepository()Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getPDFWriterCacheFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterGsonRepository;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterGsonRepository;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;)V

    return-object v1
.end method
