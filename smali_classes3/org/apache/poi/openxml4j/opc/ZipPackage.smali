.class public final Lorg/apache/poi/openxml4j/opc/ZipPackage;
.super Lorg/apache/poi/openxml4j/opc/OPCPackage;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field private static final SETTINGS_XML:Ljava/lang/String; = "settings.xml"


# instance fields
.field private final zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    :try_start_0
    new-instance v1, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Could not parse ZipPackage"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 5

    invoke-direct {p0, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;

    invoke-direct {v1, v0}, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;-><init>(Ljava/util/zip/ZipFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p2, v1, :cond_0

    sget-object p2, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in zip file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - falling back to stream processing (i.e. ignoring zip central directory)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->openZipEntrySourceStream(Ljava/io/File;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    return-void

    :cond_0
    new-instance p2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open the specified file: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipStream(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    move-result-object p1

    :try_start_0
    new-instance p2, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;

    invoke-direct {p2, p1}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;-><init>(Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)V

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to read zip entry source"

    invoke-direct {p1, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;-><init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    return-void
.end method

.method private buildPartName(Ljava/util/zip/ZipEntry;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[Content_Types].xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getOPCNameFromZipItemName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not valid, so this part won\'t be add to the package."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v1, v4, p1

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method private declared-synchronized generateTempFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenXML4J"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->getFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static openZipEntrySourceStream(Ljava/io/File;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 5

    const-string v0, "\'"

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->openZipEntrySourceStream(Ljava/io/FileInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    instance-of v1, v2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    if-eqz v1, :cond_0

    check-cast v2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    throw v2

    :cond_0
    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read the file input stream from file: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t open the specified file input stream from file: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static openZipEntrySourceStream(Ljava/io/FileInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->openZipStream(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->openZipEntrySourceStream(Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    instance-of p0, v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    if-eqz p0, :cond_0

    check-cast v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    throw v0

    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Failed to read the zip entry source stream"

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Could not open the file input stream"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static openZipEntrySourceStream(Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;-><init>(Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Could not open the specified zip entry source stream"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public closeImpl()V
    .locals 9

    const-string v0, "\' cannot be deleted ! Make sure that no other application use it."

    const-string v1, "The temporary file: \'"

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->flush()V

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->getDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->generateTempFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-static {v3, v4}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->save(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v7, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-static {v7}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_1
    invoke-static {v3, v2}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v3, v6, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v3, v6, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_2
    throw v7

    :catchall_1
    move-exception v7

    iget-object v8, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-static {v8}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_2
    invoke-static {v3, v2}, Lorg/apache/poi/openxml4j/opc/internal/FileHelper;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v3, v6, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_3
    throw v7

    :catchall_2
    move-exception v7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v3, v6, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_4
    throw v7

    :cond_5
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Can\'t close a package not previously open with the open() method !"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    return-void
.end method

.method public createPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 p3, 0x5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, p3, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "partName"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "contentType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flushImpl()V
    .locals 0

    return-void
.end method

.method public getPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPartsImpl()[Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, [Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[Content_Types].xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-interface {v0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mimetype"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    move v1, v6

    :cond_4
    const-string/jumbo v5, "settings.xml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_8

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/ODFNotOfficeXmlFileException;

    const-string v1, "The supplied data appears to be in ODF (Open Document) Format. Formats like these (eg ODS, ODP) are not supported, try Apache ODFToolkit"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/ODFNotOfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    if-nez v3, :cond_9

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;

    const-string v1, "No valid entries or contents found, this is not a valid OOXML (Office Open XML) file"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v1, "Package should contain a content type part [M1.13]"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-interface {v0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const-string v2, "application/vnd.openxmlformats-package.relationships+xml"

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-direct {p0, v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->buildPartName(Ljava/util/zip/ZipEntry;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v4, v3}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->getContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :try_start_1
    new-instance v2, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;

    invoke-direct {v2, p0, v1, v3, v4}, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/util/zip/ZipEntry;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    invoke-interface {v0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-direct {p0, v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->buildPartName(Ljava/util/zip/ZipEntry;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    if-nez v3, :cond_e

    goto :goto_5

    :cond_e
    iget-object v4, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v4, v3}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->getContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_5

    :cond_f
    if-eqz v4, :cond_10

    :try_start_2
    new-instance v5, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;

    invoke-direct {v5, p0, v1, v3, v4}, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/util/zip/ZipEntry;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1, v3, v5}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have any content type ! Rule: Package require content types when retrieving a part from a package. [M.1.14]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    return-object v0
.end method

.method public removePartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "partUri"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public revertImpl()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;->zipArchive:Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public saveImpl(Ljava/io/OutputStream;)V
    .locals 9

    const-string v0, "application/vnd.openxmlformats-package.core-properties+xml"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties"

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    :try_start_0
    instance-of v2, p1, Ljava/util/zip/ZipOutputStream;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    check-cast v2, Ljava/util/zip/ZipOutputStream;

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByRelationshipType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    const-string p1, "http://schemas.openxmlformats.org/officedocument/2006/relationships/metadata/core-properties"

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByRelationshipType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Save core properties part"

    aput-object v6, v5, v3

    invoke-virtual {p1, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    iget-object p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    iget-object v5, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v1, v7}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->isContentTypeRegister(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Save package relationships"

    aput-object v1, v0, v3

    invoke-virtual {p1, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_RELATIONSHIPS_ROOT_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->marshallRelationshipPart(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/util/zip/ZipOutputStream;)Z

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Save content types part"

    aput-object v1, v0, v3

    invoke-virtual {p1, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {p1, v2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->save(Ljava/io/OutputStream;)Z

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isRelationshipPart()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    sget-object v5, Lorg/apache/poi/openxml4j/opc/ZipPackage;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Save part \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getZipItemNameFromOPCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v4, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partMarshallers:Ljava/util/Map;

    iget-object v6, v0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The part "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failed to be saved in the stream with marshaller "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_4

    invoke-interface {v5, v0, v2}, Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;->marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v5, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPartMarshaller:Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

    invoke-interface {v5, v0, v2}, Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;->marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    :cond_5
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPartMarshaller:Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to save: an error occurs while saving the package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method
