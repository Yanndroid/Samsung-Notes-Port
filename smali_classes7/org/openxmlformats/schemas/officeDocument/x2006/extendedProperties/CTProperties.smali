.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctproperties3f10type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDigSig()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTDigSigBlob;
.end method

.method public abstract addNewHLinks()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;
.end method

.method public abstract addNewHeadingPairs()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;
.end method

.method public abstract addNewTitlesOfParts()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorLpstr;
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getApplication()Ljava/lang/String;
.end method

.method public abstract getCharacters()I
.end method

.method public abstract getCharactersWithSpaces()I
.end method

.method public abstract getCompany()Ljava/lang/String;
.end method

.method public abstract getDigSig()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTDigSigBlob;
.end method

.method public abstract getDocSecurity()I
.end method

.method public abstract getHLinks()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;
.end method

.method public abstract getHeadingPairs()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;
.end method

.method public abstract getHiddenSlides()I
.end method

.method public abstract getHyperlinkBase()Ljava/lang/String;
.end method

.method public abstract getHyperlinksChanged()Z
.end method

.method public abstract getLines()I
.end method

.method public abstract getLinksUpToDate()Z
.end method

.method public abstract getMMClips()I
.end method

.method public abstract getManager()Ljava/lang/String;
.end method

.method public abstract getNotes()I
.end method

.method public abstract getPages()I
.end method

.method public abstract getParagraphs()I
.end method

.method public abstract getPresentationFormat()Ljava/lang/String;
.end method

.method public abstract getScaleCrop()Z
.end method

.method public abstract getSharedDoc()Z
.end method

.method public abstract getSlides()I
.end method

.method public abstract getTemplate()Ljava/lang/String;
.end method

.method public abstract getTitlesOfParts()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorLpstr;
.end method

.method public abstract getTotalTime()I
.end method

.method public abstract getWords()I
.end method

.method public abstract isSetAppVersion()Z
.end method

.method public abstract isSetApplication()Z
.end method

.method public abstract isSetCharacters()Z
.end method

.method public abstract isSetCharactersWithSpaces()Z
.end method

.method public abstract isSetCompany()Z
.end method

.method public abstract isSetDigSig()Z
.end method

.method public abstract isSetDocSecurity()Z
.end method

.method public abstract isSetHLinks()Z
.end method

.method public abstract isSetHeadingPairs()Z
.end method

.method public abstract isSetHiddenSlides()Z
.end method

.method public abstract isSetHyperlinkBase()Z
.end method

.method public abstract isSetHyperlinksChanged()Z
.end method

.method public abstract isSetLines()Z
.end method

.method public abstract isSetLinksUpToDate()Z
.end method

.method public abstract isSetMMClips()Z
.end method

.method public abstract isSetManager()Z
.end method

.method public abstract isSetNotes()Z
.end method

.method public abstract isSetPages()Z
.end method

.method public abstract isSetParagraphs()Z
.end method

.method public abstract isSetPresentationFormat()Z
.end method

.method public abstract isSetScaleCrop()Z
.end method

.method public abstract isSetSharedDoc()Z
.end method

.method public abstract isSetSlides()Z
.end method

.method public abstract isSetTemplate()Z
.end method

.method public abstract isSetTitlesOfParts()Z
.end method

.method public abstract isSetTotalTime()Z
.end method

.method public abstract isSetWords()Z
.end method

.method public abstract setAppVersion(Ljava/lang/String;)V
.end method

.method public abstract setApplication(Ljava/lang/String;)V
.end method

.method public abstract setCharacters(I)V
.end method

.method public abstract setCharactersWithSpaces(I)V
.end method

.method public abstract setCompany(Ljava/lang/String;)V
.end method

.method public abstract setDigSig(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTDigSigBlob;)V
.end method

.method public abstract setDocSecurity(I)V
.end method

.method public abstract setHLinks(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;)V
.end method

.method public abstract setHeadingPairs(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorVariant;)V
.end method

.method public abstract setHiddenSlides(I)V
.end method

.method public abstract setHyperlinkBase(Ljava/lang/String;)V
.end method

.method public abstract setHyperlinksChanged(Z)V
.end method

.method public abstract setLines(I)V
.end method

.method public abstract setLinksUpToDate(Z)V
.end method

.method public abstract setMMClips(I)V
.end method

.method public abstract setManager(Ljava/lang/String;)V
.end method

.method public abstract setNotes(I)V
.end method

.method public abstract setPages(I)V
.end method

.method public abstract setParagraphs(I)V
.end method

.method public abstract setPresentationFormat(Ljava/lang/String;)V
.end method

.method public abstract setScaleCrop(Z)V
.end method

.method public abstract setSharedDoc(Z)V
.end method

.method public abstract setSlides(I)V
.end method

.method public abstract setTemplate(Ljava/lang/String;)V
.end method

.method public abstract setTitlesOfParts(Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTVectorLpstr;)V
.end method

.method public abstract setTotalTime(I)V
.end method

.method public abstract setWords(I)V
.end method

.method public abstract unsetAppVersion()V
.end method

.method public abstract unsetApplication()V
.end method

.method public abstract unsetCharacters()V
.end method

.method public abstract unsetCharactersWithSpaces()V
.end method

.method public abstract unsetCompany()V
.end method

.method public abstract unsetDigSig()V
.end method

.method public abstract unsetDocSecurity()V
.end method

.method public abstract unsetHLinks()V
.end method

.method public abstract unsetHeadingPairs()V
.end method

.method public abstract unsetHiddenSlides()V
.end method

.method public abstract unsetHyperlinkBase()V
.end method

.method public abstract unsetHyperlinksChanged()V
.end method

.method public abstract unsetLines()V
.end method

.method public abstract unsetLinksUpToDate()V
.end method

.method public abstract unsetMMClips()V
.end method

.method public abstract unsetManager()V
.end method

.method public abstract unsetNotes()V
.end method

.method public abstract unsetPages()V
.end method

.method public abstract unsetParagraphs()V
.end method

.method public abstract unsetPresentationFormat()V
.end method

.method public abstract unsetScaleCrop()V
.end method

.method public abstract unsetSharedDoc()V
.end method

.method public abstract unsetSlides()V
.end method

.method public abstract unsetTemplate()V
.end method

.method public abstract unsetTitlesOfParts()V
.end method

.method public abstract unsetTotalTime()V
.end method

.method public abstract unsetWords()V
.end method

.method public abstract xgetAppVersion()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetApplication()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCharacters()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetCharactersWithSpaces()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetCompany()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDocSecurity()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetHiddenSlides()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetHyperlinkBase()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHyperlinksChanged()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLines()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetLinksUpToDate()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMMClips()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetManager()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNotes()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetPages()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetParagraphs()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetPresentationFormat()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetScaleCrop()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSharedDoc()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSlides()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetTemplate()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTotalTime()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetWords()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xsetAppVersion(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetApplication(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCharacters(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetCharactersWithSpaces(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetCompany(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDocSecurity(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetHiddenSlides(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetHyperlinkBase(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHyperlinksChanged(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLines(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetLinksUpToDate(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMMClips(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetManager(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNotes(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetPages(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetParagraphs(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetPresentationFormat(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetScaleCrop(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSharedDoc(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSlides(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetTemplate(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTotalTime(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetWords(Lorg/apache/xmlbeans/XmlInt;)V
.end method
