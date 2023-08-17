.class public Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;
.super Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
.source "SourceFile"


# static fields
.field public static final nativeMetadataFormatName:Ljava/lang/String; = "javax_imageio_wbmp_1.0"


# instance fields
.field public height:I

.field public wbmpType:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "javax_imageio_wbmp_1.0"

    const-string v3, "com.sun.imageio.plugins.wbmp.WBMPMetadataFormat"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-direct {v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/sun/imageio/plugins/common/ImageUtil;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setNodeValue(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private getNativeTree()Lorg/w3c/dom/Node;
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "javax_imageio_wbmp_1.0"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->wbmpType:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "WBMPType"

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->width:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Width"

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->height:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Height"

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    return-object v0
.end method


# virtual methods
.method public getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    const-string v0, "javax_imageio_wbmp_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->getNativeTree()Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardTree()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "WBMPMetadata0"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStandardChromaNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Chroma"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "BlackIsZero"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    const-string v3, "TRUE"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardDimensionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Dimension"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ImageOrientation"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    const-string v3, "Normal"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WBMPMetadata1"

    invoke-static {p2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WBMPMetadata1"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WBMPMetadata1"

    invoke-static {p2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
