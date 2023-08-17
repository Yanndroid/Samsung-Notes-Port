.class public abstract Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;,
        Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;,
        Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;
    }
.end annotation


# static fields
.field private static standardFormat:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat; = null

.field public static final standardMetadataFormatName:Ljava/lang/String; = "javax_imageio_1.0"


# instance fields
.field private elementMap:Ljava/util/HashMap;

.field private resourceBaseName:Ljava/lang/String;

.field private rootName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    if-eq p2, v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->rootName:Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    iput-object p1, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->elementName:Ljava/lang/String;

    iput p2, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childPolicy:I

    iget-object p2, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid value for childPolicy!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rootName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, p3, :cond_0

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    iput-object p1, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->elementName:Ljava/lang/String;

    const/4 v1, 0x5

    iput v1, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childPolicy:I

    iput p2, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->minChildren:I

    iput p3, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->maxChildren:I

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->rootName:Ljava/lang/String;

    iget-object p2, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minChildren > maxChildren!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minChildren < 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rootName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized createStandardFormat()V
    .locals 2

    const-class v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->standardFormat:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/common/StandardMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/common/StandardMetadataFormat;-><init>()V

    sput-object v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->standardFormat:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such attribute \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;Z)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    return-object p1
.end method

.method private getElement(Ljava/lang/String;Z)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "element name is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such element: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getObjectValue(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->objectValue:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No object within element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getResource(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$1;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    invoke-static {v2, p2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p2, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    return-object v1
.end method

.method public static getStandardFormatInstance()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 1

    invoke-static {}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->createStandardFormat()V

    sget-object v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->standardFormat:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;IZII)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    if-eqz p2, :cond_2

    if-ltz p3, :cond_1

    const/4 v0, 0x4

    if-gt p3, v0, :cond_1

    if-ltz p5, :cond_0

    if-gt p5, p6, :cond_0

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    iput-object p2, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->attrName:Ljava/lang/String;

    const/16 v1, 0x20

    iput v1, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    iput p3, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->dataType:I

    iput-boolean p4, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->required:Z

    iput p5, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->listMinLength:I

    iput p6, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->listMaxLength:I

    iget-object p3, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid list bounds!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid value for dataType!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attrName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    const/4 v0, 0x4

    if-gt p3, v0, :cond_0

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    iput-object p2, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->attrName:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    iput p3, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->dataType:I

    iput-boolean p4, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->required:Z

    iput-object p5, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->defaultValue:Ljava/lang/String;

    iget-object p3, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid value for dataType!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attrName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    if-eqz p2, :cond_3

    if-ltz p3, :cond_2

    const/4 v0, 0x4

    if-gt p3, v0, :cond_2

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    invoke-direct {v1, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    iput-object p2, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->attrName:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    if-eqz p8, :cond_0

    or-int/lit8 p8, v2, 0x4

    iput p8, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    :cond_0
    if-eqz p9, :cond_1

    iget p8, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    or-int/lit8 p8, p8, 0x8

    iput p8, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    :cond_1
    iput p3, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->dataType:I

    iput-boolean p4, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->required:Z

    iput-object p5, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->defaultValue:Ljava/lang/String;

    iput-object p6, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->minValue:Ljava/lang/String;

    iput-object p7, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->maxValue:Ljava/lang/String;

    iget-object p3, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrMap:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid value for dataType!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attrName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    if-eqz p2, :cond_6

    if-ltz p3, :cond_5

    const/4 v0, 0x4

    if-gt p3, v0, :cond_5

    if-eqz p6, :cond_4

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enumeratedValues contains a non-String value!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enumeratedValues contains a null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    iput-object p2, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->attrName:Ljava/lang/String;

    const/16 v1, 0x10

    iput v1, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    iput p3, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->dataType:I

    iput-boolean p4, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->required:Z

    iput-object p5, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->defaultValue:Ljava/lang/String;

    iput-object p6, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->enumeratedValues:Ljava/util/List;

    iget-object p3, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enumeratedValues is empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enumeratedValues == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid value for dataType!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attrName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addBooleanAttribute(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "TRUE"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "FALSE"

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    move-object v5, p3

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public addChildElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object v1

    iget-object v0, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->parentList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object v0

    if-ltz p3, :cond_0

    const/4 v1, 0x5

    if-gt p3, v1, :cond_0

    if-eq p3, v1, :cond_0

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    invoke-direct {v1, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    iput-object p1, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->elementName:Ljava/lang/String;

    iput p3, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childPolicy:I

    iget-object p3, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->parentList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid value for childPolicy!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object v0

    if-ltz p3, :cond_1

    if-gt p3, p4, :cond_0

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    invoke-direct {v1, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    iput-object p1, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->elementName:Ljava/lang/String;

    const/4 v2, 0x5

    iput v2, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childPolicy:I

    iput p3, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->minChildren:I

    iput p4, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->maxChildren:I

    iget-object p3, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->parentList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minChildren > maxChildren!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minChildren < 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addObjectValue(Ljava/lang/String;Ljava/lang/Class;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    const/16 v1, 0x20

    iput v1, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    iput-object p2, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->classType:Ljava/lang/Class;

    iput p3, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->arrayMinLength:I

    iput p4, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->arrayMaxLength:I

    iput-object v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->objectValue:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    return-void
.end method

.method public addObjectValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Comparable;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Ljava/lang/Comparable<",
            "-TT;>;",
            "Ljava/lang/Comparable<",
            "-TT;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    const/4 v1, 0x2

    iput v1, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    if-eqz p6, :cond_0

    or-int/lit8 p6, v1, 0x4

    iput p6, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    :cond_0
    if-eqz p7, :cond_1

    iget p6, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    or-int/lit8 p6, p6, 0x8

    iput p6, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    :cond_1
    iput-object p2, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->classType:Ljava/lang/Class;

    iput-object p3, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->defaultValue:Ljava/lang/Object;

    iput-object p4, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->minValue:Ljava/lang/Comparable;

    iput-object p5, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->maxValue:Ljava/lang/Comparable;

    iput-object v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->objectValue:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    return-void
.end method

.method public addObjectValue(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;ZTT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    new-instance p3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    invoke-direct {p3, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    const/4 v0, 0x1

    iput v0, p3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    iput-object p2, p3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->classType:Ljava/lang/Class;

    iput-object p4, p3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->defaultValue:Ljava/lang/Object;

    iput-object p3, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->objectValue:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    return-void
.end method

.method public addObjectValue(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;ZTT;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enumeratedValues contains a value not of class classType!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enumeratedValues contains a null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    invoke-direct {p3, p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;)V

    const/16 v0, 0x10

    iput v0, p3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    iput-object p2, p3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->classType:Ljava/lang/Class;

    iput-object p4, p3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->defaultValue:Ljava/lang/Object;

    iput-object p5, p3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->enumeratedValues:Ljava/util/List;

    iput-object p3, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->objectValue:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enumeratedValues is empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enumeratedValues == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract canNodeAppear(Ljava/lang/String;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
.end method

.method public getAttributeDataType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    move-result-object p1

    iget p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->dataType:I

    return p1
.end method

.method public getAttributeDefaultValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->defaultValue:Ljava/lang/String;

    return-object p1
.end method

.method public getAttributeDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object v0, v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getResource(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No such attribute!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attrName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeEnumerations(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    move-result-object p1

    iget p2, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->enumeratedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attribute not an enumeration!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeListMaxLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    move-result-object p1

    iget p2, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    iget p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->listMaxLength:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attribute not a list!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeListMinLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    move-result-object p1

    iget p2, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    iget p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->listMinLength:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attribute not a list!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeMaxValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    move-result-object p1

    iget p2, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    const/16 v0, 0xe

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attribute not a range!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->maxValue:Ljava/lang/String;

    return-object p1
.end method

.method public getAttributeMinValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    move-result-object p1

    iget p2, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    const/16 v0, 0xe

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attribute not a range!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->minValue:Ljava/lang/String;

    return-object p1
.end method

.method public getAttributeNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getAttributeValueType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    move-result-object p1

    iget p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->valueType:I

    return p1
.end method

.method public getChildNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    iget v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childPolicy:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childList:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getChildPolicy(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    iget p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childPolicy:I

    return p1
.end method

.method public getElementDescription(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getResource(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getElementMaxChildren(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    iget v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childPolicy:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->maxChildren:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Child policy not CHILD_POLICY_REPEAT!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getElementMinChildren(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    iget v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childPolicy:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->minChildren:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Child policy not CHILD_POLICY_REPEAT!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectArrayMaxLength(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getObjectValue(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    move-result-object p1

    iget v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->arrayMaxLength:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a list!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectArrayMinLength(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getObjectValue(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    move-result-object p1

    iget v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->arrayMinLength:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a list!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getObjectValue(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->classType:Ljava/lang/Class;

    return-object p1
.end method

.method public getObjectDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getObjectValue(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->defaultValue:Ljava/lang/Object;

    return-object p1
.end method

.method public getObjectEnumerations(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getObjectValue(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    move-result-object p1

    iget v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->enumeratedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an enumeration!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectMaxValue(Ljava/lang/String;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getObjectValue(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    move-result-object p1

    iget v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->maxValue:Ljava/lang/Comparable;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a range!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectMinValue(Ljava/lang/String;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getObjectValue(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    move-result-object p1

    iget v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->minValue:Ljava/lang/Comparable;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a range!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectValueType(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->objectValue:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;->valueType:I

    return p1
.end method

.method public getResourceBaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->rootName:Ljava/lang/String;

    return-object v0
.end method

.method public isAttributeRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;

    move-result-object p1

    iget-boolean p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Attribute;->required:Z

    return p1
.end method

.method public removeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    iget-object v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->attrMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeElement(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;Z)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->parentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;Z)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->childList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->elementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public removeObjectValue(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getElement(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$Element;->objectValue:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl$ObjectValue;

    return-void
.end method

.method public setResourceBaseName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->resourceBaseName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "resourceBaseName == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
