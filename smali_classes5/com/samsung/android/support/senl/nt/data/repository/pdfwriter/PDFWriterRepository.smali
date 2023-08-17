.class public Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;
    }
.end annotation


# instance fields
.field private final mDataSource:Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;->mDataSource:Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;->mDataSource:Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;->mDataSource:Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;->mDataSource:Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;->insert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trimDummy(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository;->mDataSource:Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterRepository$PDFWriterDataSource;->trimDummy(Ljava/util/Set;)V

    return-void
.end method
