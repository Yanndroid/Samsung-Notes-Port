.class public Lorg/apache/poi/POIXMLProperties$ExtendedProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/POIXMLProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedProperties"
.end annotation


# instance fields
.field private props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;


# direct methods
.method private constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/apache/poi/POIXMLProperties$ExtendedProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    return-object p0
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetAppVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getApplication()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacters()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetCharacters()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCharacters()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCharactersWithSpaces()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetCharactersWithSpaces()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCharactersWithSpaces()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetCompany()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCompany()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHiddenSlides()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetHiddenSlides()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getHiddenSlides()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getHyperlinkBase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetHyperlinkBase()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getHyperlinkBase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLines()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetLines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getLines()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMMClips()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetMMClips()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getMMClips()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getManager()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getManager()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotes()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetNotes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getNotes()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPages()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetPages()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getPages()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getParagraphs()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetParagraphs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getParagraphs()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPresentationFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetPresentationFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getPresentationFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlides()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetSlides()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getSlides()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getTemplate()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalTime()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetTotalTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getTotalTime()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    return-object v0
.end method

.method public getWords()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->isSetWords()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getWords()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
