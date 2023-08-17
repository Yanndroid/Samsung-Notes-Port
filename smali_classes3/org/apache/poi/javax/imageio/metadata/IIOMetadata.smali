.class public abstract Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public controller:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

.field public defaultController:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

.field public extraMetadataFormatClassNames:[Ljava/lang/String;

.field public extraMetadataFormatNames:[Ljava/lang/String;

.field public nativeMetadataFormatClassName:Ljava/lang/String;

.field public nativeMetadataFormatName:Ljava/lang/String;

.field public standardFormatSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->nativeMetadataFormatClassName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->extraMetadataFormatClassNames:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->defaultController:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->controller:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->extraMetadataFormatClassNames:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->defaultController:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->controller:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

    iput-boolean p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->standardFormatSupported:Z

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->nativeMetadataFormatClassName:Ljava/lang/String;

    if-eqz p4, :cond_3

    array-length p1, p4

    if-eqz p1, :cond_2

    if-eqz p5, :cond_1

    array-length p1, p5

    array-length p2, p4

    if-ne p1, p2, :cond_0

    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    invoke-virtual {p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->extraMetadataFormatClassNames:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "extraMetadataFormatClassNames.length != extraMetadataFormatNames.length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "extraMetadataFormatNames != null && extraMetadataFormatClassNames == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "extraMetadataFormatNames.length == 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p5, :cond_4

    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "extraMetadataFormatNames == null && extraMetadataFormatClassNames != null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private append(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method


# virtual methods
.method public activateController()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->hasController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getController()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;->activate(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "hasController() == false!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;
.end method

.method public getController()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->controller:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

    return-object v0
.end method

.method public getDefaultController()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->defaultController:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

    return-object v0
.end method

.method public getExtraMetadataFormatNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMetadataFormat(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 5

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->standardFormatSupported:Z

    if-eqz v0, :cond_0

    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getStandardFormatInstance()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->nativeMetadataFormatClassName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->extraMetadataFormatClassNames:[Ljava/lang/String;

    aget-object p1, p1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    :try_start_0
    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata$1;

    invoke-direct {v0, p0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata$1;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x1

    :try_start_1
    invoke-static {p1, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    :try_start_2
    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata$2;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata$2;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {p1, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    :try_start_4
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    :goto_2
    const-string v0, "getInstance"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t obtain format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported format name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "formatName == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMetadataFormatNames()[Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getNativeMetadataFormatName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "javax_imageio_1.0"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getExtraMetadataFormatNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    if-eqz v1, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    if-eqz v3, :cond_3

    array-length v7, v3

    add-int/2addr v6, v7

    :cond_3
    if-nez v6, :cond_4

    return-object v2

    :cond_4
    new-array v2, v6, [Ljava/lang/String;

    if-eqz v0, :cond_5

    aput-object v0, v2, v4

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    if-eqz v1, :cond_6

    add-int/lit8 v0, v5, 0x1

    aput-object v1, v2, v5

    move v5, v0

    :cond_6
    if-eqz v3, :cond_7

    :goto_3
    array-length v0, v3

    if-ge v4, v0, :cond_7

    add-int/lit8 v0, v5, 0x1

    aget-object v1, v3, v4

    aput-object v1, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v0

    goto :goto_3

    :cond_7
    return-object v2
.end method

.method public getNativeMetadataFormatName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    return-object v0
.end method

.method public getStandardChromaNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandardCompressionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandardDataNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandardDimensionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandardDocumentNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandardTextNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandardTileNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandardTransparencyNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStandardTree()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 2

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "javax_imageio_1.0"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardChromaNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->append(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardCompressionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->append(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardDataNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->append(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardDimensionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->append(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardDocumentNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->append(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardTextNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->append(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardTileNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->append(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardTransparencyNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->append(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;)V

    return-object v0
.end method

.method public hasController()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getController()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isReadOnly()Z
.end method

.method public isStandardMetadataFormatSupported()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->standardFormatSupported:Z

    return v0
.end method

.method public abstract mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
.end method

.method public abstract reset()V
.end method

.method public setController(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->controller:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataController;

    return-void
.end method

.method public setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->reset()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    return-void
.end method
