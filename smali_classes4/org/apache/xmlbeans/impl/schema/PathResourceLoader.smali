.class public Lorg/apache/xmlbeans/impl/schema/PathResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/ResourceLoader;


# instance fields
.field private _path:[Lorg/apache/xmlbeans/ResourceLoader;


# direct methods
.method public constructor <init>([Ljava/io/File;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/apache/xmlbeans/impl/schema/FileResourceLoader;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/impl/schema/FileResourceLoader;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/xmlbeans/ResourceLoader;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/ResourceLoader;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/PathResourceLoader;->_path:[Lorg/apache/xmlbeans/ResourceLoader;

    return-void
.end method

.method public constructor <init>([Lorg/apache/xmlbeans/ResourceLoader;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lorg/apache/xmlbeans/ResourceLoader;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/PathResourceLoader;->_path:[Lorg/apache/xmlbeans/ResourceLoader;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/PathResourceLoader;->_path:[Lorg/apache/xmlbeans/ResourceLoader;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    :try_start_0
    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/ResourceLoader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/PathResourceLoader;->_path:[Lorg/apache/xmlbeans/ResourceLoader;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
