.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/VoiceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CTEXTENSION_URI:Ljava/lang/String; = "{DAA4B4D4-6D71-4841-9C94-3DE7FCFB9230}"

.field private static final EMBED_RELATIONSHIP_TYPE:Ljava/lang/String; = "http://schemas.microsoft.com/office/2007/relationships/media"

.field private static final EXEC_RELATIONSHIP_TYPE:Ljava/lang/String; = "http://schemas.openxmlformats.org/officeDocument/2006/relationships/audio"

.field private static final TAG:Ljava/lang/String; = "VoiceUtils"

.field private static final p14Ns:Ljava/lang/String; = "http://schemas.microsoft.com/office/powerpoint/2010/main"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAudio(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;D)V
    .locals 2
    .param p1    # Lorg/apache/poi/openxml4j/opc/PackagePart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p3

    sget-object p4, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://schemas.microsoft.com/office/2007/relationships/media"

    invoke-virtual {p3, p1, p4, v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p4, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object p2

    const-string p4, ""

    invoke-interface {p2, p4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    const-string p4, "ppaction://media"

    invoke-interface {p2, p4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setAction(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->addNewAudioFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioFile;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioFile;->setLink(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;->addNewExt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;

    move-result-object p0

    const-string p1, "{DAA4B4D4-6D71-4841-9C94-3DE7FCFB9230}"

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;->setUri(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance p1, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string p2, "http://schemas.microsoft.com/office/powerpoint/2010/main"

    const-string p4, "media"

    const-string v0, "p14"

    invoke-direct {p1, p2, p4, v0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {p0, v0, p2}, Lorg/apache/xmlbeans/XmlCursor;->insertNamespace(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object p2, Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    const-string p4, "embed"

    invoke-direct {p1, p2, p4}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :cond_1
    return-void
.end method

.method public static addTimingInfo(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->isSetTiming()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getTiming()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;->getTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;->getParArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;->getCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->getChildTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->addNewTiming()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;->addNewTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;->addNewPar()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;->addNewCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite;->INDEFINITE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->setDur(Ljava/lang/Object;)V

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;->NEVER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->setRestart(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;)V

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;->TM_ROOT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->setNodeType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->addNewChildTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;->addNewAudio()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;->addNewCMediaNode()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;

    move-result-object p0

    const v0, 0x13880

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;->setVol(I)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;->addNewCTn()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;

    move-result-object v0

    sget-object v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->HOLD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->setFill(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->setDisplay(Z)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->addNewStCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;->addNewCond()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite;->INDEFINITE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeIndefinite$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;->setDelay(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonMediaNodeData;->addNewTgtEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeTargetElement;->addNewSpTgt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;

    move-result-object p0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;->setSpid(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "flac"

    const-string v3, "ogg"

    const-string v4, "amr"

    const-string v5, "aac"

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "rtttl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "weba"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x10

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "wma"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "wav"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "oga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "mp3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "mp2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "mka"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0x8

    goto :goto_0

    :sswitch_a
    const-string v1, "mid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_b
    const-string v1, "m4a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_c
    const-string v1, "imy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_e
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_f
    const-string v1, "3gp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_10
    const-string v1, "3ga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_11
    const-string v1, "3g2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    const-string p0, "unknown"

    goto :goto_1

    :pswitch_0
    const-string p0, "webm"

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    const-string p0, "x-ms-wma"

    goto :goto_1

    :pswitch_3
    const-string p0, "x-wav"

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_5
    const-string p0, "mpeg"

    goto :goto_1

    :pswitch_6
    const-string p0, "x-matroska"

    goto :goto_1

    :pswitch_7
    const-string p0, "midi"

    goto :goto_1

    :pswitch_8
    const-string p0, "mp4"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_9
    const-string p0, "imelody"

    goto :goto_1

    :pswitch_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_c
    const-string p0, "3gpp"

    goto :goto_1

    :pswitch_d
    const-string p0, "3gpp2"

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xcc1e -> :sswitch_11
        0xcc4d -> :sswitch_10
        0xcc5c -> :sswitch_f
        0x17843 -> :sswitch_e
        0x179c6 -> :sswitch_d
        0x197d5 -> :sswitch_c
        0x19fda -> :sswitch_b
        0x1a648 -> :sswitch_a
        0x1a683 -> :sswitch_9
        0x1a6ef -> :sswitch_8
        0x1a6f0 -> :sswitch_7
        0x1ad89 -> :sswitch_6
        0x1ad8f -> :sswitch_5
        0x1caec -> :sswitch_4
        0x1cc4b -> :sswitch_3
        0x2fff68 -> :sswitch_2
        0x379f8d -> :sswitch_1
        0x67cf46a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static isSupportedVoice(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "VoiceUtils"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*\\.(m4a|aac|flac|mp3|ogg|mid|amr|rtttl|imy|wav|mxmf|mka|3gp|wma)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isSupportedVoice# supported: true"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportedVoice# filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static writeFile(Ljava/lang/String;Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/util/HashMap;Ljava/util/HashMap;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xslf/usermodel/XMLSlideShow;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;)",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;"
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/VoiceUtils;->isSupportedVoice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/ppt/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/VoiceUtils;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    :goto_0
    return-object p1
.end method
