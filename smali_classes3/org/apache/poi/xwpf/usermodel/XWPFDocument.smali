.class public Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
.super Lorg/apache/poi/POIXMLDocument;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/Document;
.implements Lorg/apache/poi/xwpf/usermodel/IBody;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field public bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation
.end field

.field public comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFComment;",
            ">;"
        }
    .end annotation
.end field

.field public contentControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFSDT;",
            ">;"
        }
    .end annotation
.end field

.field private ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

.field private drawingIdManager:Lorg/apache/poi/util/IdentifierManager;

.field public endnotes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;",
            ">;"
        }
    .end annotation
.end field

.field public footers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFooter;",
            ">;"
        }
    .end annotation
.end field

.field public footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

.field private headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

.field public headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFHeader;",
            ">;"
        }
    .end annotation
.end field

.field public hyperlinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;",
            ">;"
        }
    .end annotation
.end field

.field public numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

.field public packagePictures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;>;"
        }
    .end annotation
.end field

.field public paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field public pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

.field public styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

.field public tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->newPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/util/IdentifierManager;

    const-wide/16 v1, 0x0

    const-wide v3, 0xffffffffL

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/IdentifierManager;-><init>(JJ)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/util/IdentifierManager;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->onDocumentCreate()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    invoke-static {p1}, Lorg/apache/poi/util/PackageHelper;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    new-instance p1, Lorg/apache/poi/util/IdentifierManager;

    const-wide/16 v0, 0x0

    const-wide v2, 0xffffffffL

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/apache/poi/util/IdentifierManager;-><init>(JJ)V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/util/IdentifierManager;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocument;->load(Lorg/apache/poi/POIXMLFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    new-instance p1, Lorg/apache/poi/util/IdentifierManager;

    const-wide/16 v0, 0x0

    const-wide v2, 0xffffffffL

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/apache/poi/util/IdentifierManager;-><init>(JJ)V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/util/IdentifierManager;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocument;->load(Lorg/apache/poi/POIXMLFactory;)V

    return-void
.end method

.method private getBodyElementSpecificPos(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private getPosOfBodyElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)I
    .locals 4

    invoke-interface {p1}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {v2}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v3

    if-ne v3, v0, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getSection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->isSetSectPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private initFootnotes()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->onDocumentRead()V

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;->getEndnotes()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->getEndnoteArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getId()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    invoke-direct {v7, p0, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private initHyperlinks()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isCursorInBody(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return v0
.end method

.method public static newPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/io/OutputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object v1

    const-string v2, "Apache POI"

    invoke-interface {v1, v2}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setCreatorProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addEndnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getId()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public addFootnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->addFootnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object p1

    return-object p1
.end method

.method public addPictureData(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->addPictureData([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addPictureData([BI)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->findPackagePictureData([BI)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNextPicNameNumber(I)I

    move-result p2

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_0
    throw p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {p0, v2, p1, v0}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public commit()V
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "document"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v2, v1, v0}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public createFooter(Lorg/apache/poi/wp/usermodel/HeaderFooterType;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getSection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->isSetTitlePg()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->addNewTitlePg()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->toInt()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object p1

    return-object p1
.end method

.method public createFootnotes()Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;->addNewFootnotes()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->setFootnotes(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    return-object v0
.end method

.method public createHeader(Lorg/apache/poi/wp/usermodel/HeaderFooterType;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getSection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->isSetTitlePg()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->addNewTitlePg()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->toInt()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object p1

    return-object p1
.end method

.method public createHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    invoke-direct {v0, p0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    return-object v0
.end method

.method public createNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;->addNewNumbering()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->setNumbering(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-object v0
.end method

.method public createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createStyles()Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->addNewStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->setStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    return-object v0
.end method

.method public createTOC()V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewSdt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/TOC;

    invoke-direct {v1, v0}, Lorg/apache/poi/xwpf/usermodel/TOC;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getStyle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "Heading"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x7

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v6, "112723803"

    invoke-virtual {v1, v3, v2, v4, v6}, Lorg/apache/poi/xwpf/usermodel/TOC;->addRow(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "can\'t format number in TOC heading"

    aput-object v8, v6, v7

    aput-object v2, v6, v4

    invoke-virtual {v3, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createTable()Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createTable(II)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;II)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public enforceCommentsProtection()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    return-void
.end method

.method public enforceCommentsProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void
.end method

.method public enforceFillingFormsProtection()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    return-void
.end method

.method public enforceFillingFormsProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void
.end method

.method public enforceReadonlyProtection()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    return-void
.end method

.method public enforceReadonlyProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void
.end method

.method public enforceTrackedChangesProtection()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    return-void
.end method

.method public enforceTrackedChangesProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void
.end method

.method public enforceUpdateFields()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setUpdateFields()V

    return-void
.end method

.method public findPackagePictureData([BI)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v0

    iget-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getData()[B

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllEmbedds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getAllPackagePictures()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBodyElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBodyElementsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getCommentByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComments()[Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    return-object v0
.end method

.method public getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    return-object v0
.end method

.method public getDrawingIdManager()Lorg/apache/poi/util/IdentifierManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/util/IdentifierManager;

    return-object v0
.end method

.method public getEndnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    return-object p1
.end method

.method public getFooterArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFooterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFooter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFootnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->getFootnoteById(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object p1

    return-object p1
.end method

.method public getFootnotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->getFootnotesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    return-object v0
.end method

.method public getHeaderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFHeader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlinkByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHyperlinks()[Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    return-object v0
.end method

.method public getLastParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object v0
.end method

.method public getNextPicNameNumber(I)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getAllPackagePictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object v1, v1, p1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object v1, v1, p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-object v0
.end method

.method public getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraphs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraphs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraphs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParagraphArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParagraphPos(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getBodyElementSpecificPos(ILjava/util/List;)I

    move-result p1

    return p1
.end method

.method public getParagraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParagraphsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 0

    return-object p0
.end method

.method public getPartById(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyType;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object v0
.end method

.method public getPictureDataByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPosOfParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPosOfBodyElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)I

    move-result p1

    return p1
.end method

.method public getPosOfTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPosOfBodyElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)I

    move-result p1

    return p1
.end method

.method public getStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;
    .locals 4
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    :try_start_0
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/POIXMLDocument;->getRelatedByType(Ljava/lang/String;)[Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->getStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting one Styles document part, but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getStyles()Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    return-object v0
.end method

.method public getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTables()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTableArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    instance-of v0, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-result-object p1

    return-object p1
.end method

.method public getTablePos(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getBodyElementSpecificPos(ILjava/util/List;)I

    move-result p1

    return p1
.end method

.method public getTables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTablesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getTblStyle(Lorg/apache/poi/xwpf/usermodel/XWPFTable;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getStyleID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 0

    return-object p0
.end method

.method public getZoomPercent()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->getZoomPercent()J

    move-result-wide v0

    return-wide v0
.end method

.method public insertNewParagraph(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->isCursorInBody(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "p"

    invoke-interface {p1, v2, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v2, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    :goto_0
    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v3, :cond_4

    instance-of v1, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v1, :cond_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1

    :cond_6
    return-object v1
.end method

.method public insertNewTbl(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->isCursorInBody(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tbl"

    invoke-interface {p1, v2, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {v2, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    :goto_0
    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v3, :cond_3

    instance-of v1, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v1, :cond_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1

    :cond_5
    return-object v1
.end method

.method public insertTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getTblArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public isEnforcedCommentsProtection()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result v0

    return v0
.end method

.method public isEnforcedFillingFormsProtection()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result v0

    return v0
.end method

.method public isEnforcedProtection()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith()Z

    move-result v0

    return v0
.end method

.method public isEnforcedReadonlyProtection()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result v0

    return v0
.end method

.method public isEnforcedTrackedChangesProtection()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result v0

    return v0
.end method

.method public isEnforcedUpdateFields()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isUpdateFields()Z

    move-result v0

    return v0
.end method

.method public isTrackRevisions()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isTrackRevisions()Z

    move-result v0

    return v0
.end method

.method public onDocumentCreate()V
    .locals 2

    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->addNewBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    const-string v1, "Apache POI"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->setApplication(Ljava/lang/String;)V

    return-void
.end method

.method public onDocumentRead()V
    .locals 7

    const-string v0, "./*"

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->initFootnotes()V

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v5, :cond_2

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    :goto_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v5, :cond_3

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    goto :goto_2

    :cond_3
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v5, :cond_1

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    invoke-direct {v0, p0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->onDocumentRead()V

    goto :goto_3

    :cond_8
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->onDocumentRead()V

    goto :goto_3

    :cond_9
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->onDocumentRead()V

    goto :goto_3

    :cond_a
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;->onDocumentRead()V

    goto :goto_3

    :cond_b
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;->getComments()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->getCommentArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    invoke-direct {v6, v4, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->onDocumentRead()V

    goto/16 :goto_3

    :cond_d
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->onDocumentRead()V

    invoke-virtual {p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart;

    invoke-static {v2}, Lorg/apache/poi/POIXMLDocumentPart;->_invokeOnDocumentRead(Lorg/apache/poi/POIXMLDocumentPart;)V

    goto :goto_5

    :cond_f
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->initHyperlinks()V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getChecksum()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getChecksum()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public removeBodyElement(I)Z
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->TABLE:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTablePos(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->removeTbl(I)V

    :cond_0
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->PARAGRAPH:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraphPos(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->removeP(I)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public removeProtectionEnforcement()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->removeEnforcement()V

    return-void
.end method

.method public setParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->setPArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V

    return-void
.end method

.method public setTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->setTblArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)V

    return-void
.end method

.method public setTrackRevisions(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setTrackRevisions(Z)V

    return-void
.end method

.method public setZoomPercent(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setZoomPercent(J)V

    return-void
.end method

.method public validateProtectionPassword(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->validateProtectionPassword(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
