.class public Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
.super Lorg/apache/poi/POIXMLDocument;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SlideShow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/POIXMLDocument;",
        "Lorg/apache/poi/sl/usermodel/SlideShow<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

.field private _masters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;",
            ">;"
        }
    .end annotation
.end field

.field private _notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

.field private _pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private _presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

.field private _slides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
            ">;"
        }
    .end annotation
.end field

.field private _tableStyles:Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->empty()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/util/PackageHelper;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;->rebase(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    :cond_0
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocument;->load(Lorg/apache/poi/POIXMLFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createNotesSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createNotesMaster()V

    :cond_0
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v0, p1}, Lorg/apache/poi/POIXMLRelation;->getFileNameIndex(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/POIXMLDocumentPart;

    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v5

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v3

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v2, v5

    :cond_3
    if-nez v2, :cond_4

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    invoke-virtual {v0, v2, v1, v3}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v0, v2, v1, p1}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    return-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static empty()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 3

    const-class v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    const-string v1, "empty.pptx"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "Missing resource \'empty.pptx\'"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p1

    return-object p1
.end method

.method public addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw p1
.end method

.method public addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p1

    return-object p1
.end method

.method public addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->findPictureData([B)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getRelationForType(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object p2

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, p2, v2, v3}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-virtual {p2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->setIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Picture type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not supported."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public commit()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v1, v0, v2}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public createMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createNotesMaster()V
    .locals 8

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->addNewNotesMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;->addNewNotesMasterId()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdListEntry;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdListEntry;->setId(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/POIXMLDocumentPart;

    instance-of v6, v5, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-eqz v6, :cond_0

    sget-object v6, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v6, v5}, Lorg/apache/poi/POIXMLRelation;->getFileNameIndex(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v5, v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-gt v6, v7, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v5, v3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v5

    :cond_5
    :goto_2
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getSlides()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->importTheme(Lorg/apache/poi/xslf/usermodel/XSLFTheme;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    return-void
.end method

.method public bridge synthetic createSlide()Lorg/apache/poi/sl/usermodel/Slide;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object v0

    return-object v0
.end method

.method public createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    sget-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->BLANK:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    invoke-virtual {v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayout(Lorg/apache/poi/xslf/usermodel/SlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Blank layout was not found - defaulting to first slide layout in master"

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getSlideLayouts()[Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "SlideMaster must contain a SlideLayout."

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object v0

    return-object v0
.end method

.method public createSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetSldIdLst()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x100

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->addNewSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    move v7, v2

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v8, v4, v6

    invoke-interface {v8}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    int-to-long v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-int v3, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v4, v7}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/POIXMLDocumentPart;

    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-nez v5, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v6

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    move v5, v2

    :cond_4
    if-nez v5, :cond_5

    move v2, v7

    :goto_3
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2, v1}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->addNewSldId()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object v0

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->setId(J)V

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->setId2(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->copyLayout(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE_LAYOUT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v2, v0, v1, p1}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method public findLayout(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getSlideMasters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayout(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic findPictureData([B)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->findPictureData([B)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p1

    return-object p1
.end method

.method public findPictureData([B)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v0

    const/16 p1, 0x8

    new-array p1, p1, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPictureData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getChecksum()[B

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllEmbedds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    const-string v1, "/ppt/embeddings/.*?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCTPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    return-object v0
.end method

.method public getCommentAuthors()Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    return-object v0
.end method

.method public getDefaultParagraphStyle(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//p:defaultTextStyle/a:lvl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "pPr"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    array-length v0, p1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotesMaster()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    return-object v0
.end method

.method public getNotesSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createNotesSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPageSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->getCx()I

    move-result v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->getCy()I

    move-result v0

    new-instance v2, Lorg/apache/poi/java/awt/Dimension;

    int-to-long v3, v1

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-long v3, v0

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object v2
.end method

.method public getPictureData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFPictureData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    const-string v1, "/ppt/media/.*?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->setIndex(I)V

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Lorg/apache/poi/sl/usermodel/Resources;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSlideMasters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    return-object v0
.end method

.method public getSlides()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    return-object v0
.end method

.method public getTableStyles()Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_tableStyles:Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    return-object v0
.end method

.method public onDocumentRead()V
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    instance-of v5, v4, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v3, v4, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of v3, v4, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    if-eqz v3, :cond_3

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    iput-object v4, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_tableStyles:Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    goto :goto_0

    :cond_3
    instance-of v3, v4, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    if-eqz v3, :cond_4

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    iput-object v4, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    goto :goto_0

    :cond_4
    instance-of v3, v4, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    if-eqz v3, :cond_0

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    iput-object v4, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;->getSldMasterIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;->getId2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetSldIdLst()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    if-nez v3, :cond_7

    sget-object v3, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Slide with r:id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " was defined, but didn\'t exist in package, skipping"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_8
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeSlide(I)Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {p0, v0}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->removeSldId(I)V

    return-object v0
.end method

.method public setPageSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 3

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Dimension;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->setCx(I)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Dimension;->getHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->setCy(I)V

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->setSldSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;)V

    return-void
.end method

.method public setSlideOrder(Lorg/apache/poi/xslf/usermodel/XSLFSlide;I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object v1

    aget-object v2, v1, p1

    if-ge p1, p2, :cond_1

    add-int/lit8 v3, p1, 0x1

    sub-int v4, p2, p1

    invoke-static {v1, v3, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {v1, p2, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    aput-object v2, v1, p2

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->setSldIdArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Slide not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
