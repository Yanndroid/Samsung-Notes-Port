.class public Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/MasterSheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/MasterSheet<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

.field private _theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;->getNotesMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    return-void
.end method

.method private static prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;
    .locals 3

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    const-string v1, "notesMaster.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;->getNotesMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "Can\'t initialize NotesMaster"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Missing resource \'notesMaster.xml\'"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 1

    const-string v0, "notesMaster"

    return-object v0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;->getClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->initColorMap(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    return-object v0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    return-object v0
.end method
