.class public Lorg/apache/poi/POIXMLProperties$CustomProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/POIXMLProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomProperties"
.end annotation


# static fields
.field public static final FORMAT_ID:Ljava/lang/String; = "{D5CDD505-2E9C-101B-9397-08002B2CF9AE}"


# instance fields
.field private props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;


# direct methods
.method private constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;)V

    return-void
.end method

.method public static synthetic access$400(Lorg/apache/poi/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    return-object p0
.end method

.method private add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->addNewProperty()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->nextPid()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setPid(I)V

    const-string/jumbo v1, "{D5CDD505-2E9C-101B-9397-08002B2CF9AE}"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setFmtid(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setName(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A property with this name already exists in the custom properties"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setR8(D)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setI4(I)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setLpwstr(Ljava/lang/String;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setBool(Z)V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getProperty(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v0

    return-object v0
.end method

.method public nextPid()I
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-interface {v5}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getPid()I

    move-result v6

    if-le v6, v4, :cond_0

    invoke-interface {v5}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getPid()I

    move-result v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v2

    return v4
.end method
