.class Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterGsonRepository$PDFWriterDocInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterGsonRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PDFWriterDocInfo"
.end annotation


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterGsonRepository$PDFWriterDocInfo;->mUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterGsonRepository$PDFWriterDocInfo;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterGsonRepository$PDFWriterDocInfo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/pdfwriter/PDFWriterGsonRepository$PDFWriterDocInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method
