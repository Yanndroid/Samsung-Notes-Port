.class public Lorg/apache/poi/sl/usermodel/SlideShowFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/File;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, p0, p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v1, p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_0
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_3
    :goto_1
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const/4 p0, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, p0

    invoke-static {p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createXSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Ljava/io/InputStream;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/SlideShowFactory$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    invoke-static {p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createXSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Your InputStream was neither an OLE2 stream, nor an OOXML stream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    const-string v1, "EncryptedPackage"

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;->getDecryptedStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-array p0, v1, [Ljava/lang/Object;

    aput-object v2, p0, v3

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createXSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    :try_start_1
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createHSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    invoke-static {v2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_2
    return-object p0

    :catchall_1
    move-exception p0

    if-eqz p1, :cond_3

    invoke-static {v2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_3
    throw p0
.end method

.method public static varargs createHSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    const-string v0, "org.apache.poi.hslf.usermodel.HSLFSlideShowFactory"

    invoke-static {v0, p0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createSlideShow(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public static createSlideShow(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Class;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :cond_0
    const-class v5, Ljava/io/InputStream;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-class v4, Ljava/io/InputStream;

    :cond_1
    :goto_1
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_2
    const-string v1, "createSlideShow"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/SlideShow;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/io/IOException;

    if-nez p1, :cond_5

    instance-of p1, p0, Lorg/apache/poi/EncryptedDocumentException;

    if-nez p1, :cond_4

    instance-of p1, p0, Lorg/apache/poi/OldFileFormatException;

    if-eqz p1, :cond_3

    check-cast p0, Lorg/apache/poi/OldFileFormatException;

    throw p0

    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    check-cast p0, Lorg/apache/poi/EncryptedDocumentException;

    throw p0

    :cond_5
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public static varargs createXSLFSlideShow([Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    const-string v0, "org.apache.poi.xslf.usermodel.XSLFSlideShowFactory"

    invoke-static {v0, p0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->createSlideShow(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method
