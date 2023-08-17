.class public Lorg/apache/poi/openxml4j/opc/ZipPackagePart;
.super Lorg/apache/poi/openxml4j/opc/PackagePart;
.source "SourceFile"


# instance fields
.field private zipEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/util/zip/ZipEntry;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lorg/apache/poi/openxml4j/opc/PackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;->zipEntry:Ljava/util/zip/ZipEntry;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/openxml4j/opc/PackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Method not implemented !"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Method not implemented !"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStreamImpl()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    check-cast v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-interface {v0, v1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStreamImpl()Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getZipArchive()Ljava/util/zip/ZipEntry;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;->zipEntry:Ljava/util/zip/ZipEntry;

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Method not implemented !"

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save(Ljava/io/OutputStream;)Z
    .locals 1

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method
