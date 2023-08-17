.class public final Lorg/apache/poi/xslf/usermodel/XSLFNotes;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Notes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/Notes<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->_notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

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

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;->getNotes()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->_notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->setCommonSlideData(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V

    return-void
.end method

.method private static prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;
    .locals 2

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;->addNewCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->addNewSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    move-result-object v0

    return-object v0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;
    .locals 3

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

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 1

    const-string v0, "notes"

    return-object v0
.end method

.method public getTextParagraphs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    instance-of v3, v2, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->_notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    return-object v0
.end method
