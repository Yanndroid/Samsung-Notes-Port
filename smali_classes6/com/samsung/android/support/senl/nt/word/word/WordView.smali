.class public Lcom/samsung/android/support/senl/nt/word/word/WordView;
.super Lcom/samsung/android/support/senl/nt/word/base/OfficeView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/word/base/OfficeView<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFDocument;",
        "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILE_EXTENSION:Ljava/lang/String; = ".docx"

.field private static final FONT_FAMILY:Ljava/lang/String; = "Calibri"

.field private static final TAG:Ljava/lang/String;

.field private static inlineImage:Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;

.field public static transformer:Ljavax/xml/transform/Transformer;


# instance fields
.field public hasBullet:Z

.field public source:Ljavax/xml/transform/stream/StreamSource;

.field public tFactory:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WordView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->inlineImage:Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Mode export : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->modeExport:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->setElementId(I)V

    :try_start_0
    const-string p1, "/word/media/image2.png"

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    const-string p3, "image/png"

    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to create content type"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static addInlineImage(Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->inlineImage:Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->addInlineImage(Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    return-void
.end method

.method private configLatexParser()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "MML2OMML.XSL"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->tFactory:Ljavax/xml/transform/TransformerFactory;

    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v1}, Ljavax/xml/transform/stream/StreamSource;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->source:Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->tFactory:Ljavax/xml/transform/TransformerFactory;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->source:Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->transformer:Ljavax/xml/transform/Transformer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/word/WordView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransformerConfig error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/word/WordView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO latex error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static getInlineImageRun(I)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->inlineImage:Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->getInlineImageRun(I)Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p0

    return-object p0
.end method

.method private processObject(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v7, v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    const/4 v2, 0x7

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_6

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v8, Lcom/samsung/android/support/senl/nt/word/word/controller/LinkWordController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/word/controller/LinkWordController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/word/WordView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/samsung/android/support/senl/nt/word/word/controller/WebWordController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/word/controller/WebWordController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/word/WordView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V

    goto :goto_0

    :cond_3
    new-instance v7, Lcom/samsung/android/support/senl/nt/word/word/controller/FormulaWordController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget v6, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/word/controller/FormulaWordController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V

    goto/16 :goto_1

    :cond_4
    new-instance v8, Lcom/samsung/android/support/senl/nt/word/word/controller/VoiceWordController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/word/controller/VoiceWordController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V

    :goto_0
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->processItem()V

    goto/16 :goto_2

    :cond_5
    new-instance v7, Lcom/samsung/android/support/senl/nt/word/word/controller/ImageWordController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/word/controller/ImageWordController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    if-ne v0, v2, :cond_7

    new-instance v8, Lcom/samsung/android/support/senl/nt/word/word/controller/TextBoxWordController;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/word/controller/TextBoxWordController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->processItem()V

    :cond_7
    new-instance v8, Lcom/samsung/android/support/senl/nt/word/word/controller/ImageWordController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/word/controller/ImageWordController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V

    goto :goto_0

    :cond_8
    new-instance v7, Lcom/samsung/android/support/senl/nt/word/word/controller/TextBoxWordController;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/word/word/controller/TextBoxWordController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    :goto_1
    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->processItem()V

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public addBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/support/senl/nt/word/word/controller/BackgroundWordController;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/word/word/controller/BackgroundWordController;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setPageBreak(Z)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/base/controller/BackgroundOfficeController;->addBackground(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V

    return-void
.end method

.method public addBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;IIILjava/lang/String;)V
    .locals 23

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-object/from16 v0, p6

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/word/WordView;->TAG:Ljava/lang/String;

    const-string v2, "addBodyText()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/word/word/WordView;->inlineImage:Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->clear()V

    iget-object v2, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v2, v12}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content page : \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move/from16 v2, p4

    move/from16 v3, p5

    if-ne v2, v3, :cond_0

    iget v2, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    invoke-virtual {v11, v0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->countLinesBefore(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v15, p1

    invoke-virtual {v15, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionStart(I)I

    move-result v0

    if-eqz v14, :cond_7

    array-length v2, v14

    if-lez v2, :cond_7

    const/16 v16, 0x0

    aget-object v2, v14, v16

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v2, v10

    goto :goto_0

    :cond_1
    move/from16 v2, v16

    :goto_0
    move/from16 v17, v1

    move v9, v2

    :goto_1
    array-length v1, v14

    if-ge v9, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v1

    iget-object v2, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    if-nez v2, :cond_2

    iput-object v1, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    invoke-virtual {v1, v10}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setPageBreak(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v1

    :cond_2
    move-object v8, v1

    if-eqz v9, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    move/from16 v18, v0

    aget-object v0, v14, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v19, v18, v0

    new-instance v20, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;

    iget-object v0, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mHelper:Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;

    move-object/from16 v21, v0

    check-cast v21, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

    if-eqz v12, :cond_5

    if-lez v9, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v22, v16

    goto :goto_3

    :cond_5
    :goto_2
    move/from16 v22, v10

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object v4, v13

    move-object v5, v8

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 p4, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move-object/from16 v9, v21

    move/from16 v21, v10

    move/from16 v10, v22

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;IIILcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;Z)V

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->processItem()V

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentFromLeft()I

    move-result v0

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationLeft(I)V

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentFromRight()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationRight(I)V

    :cond_6
    aget-object v0, v14, v19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v18, v0

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v21

    goto :goto_1

    :cond_7
    return-void
.end method

.method public addBodyTextContinuous(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;ILcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "I",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFDocument;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">.ContinueIndex;II)V"
        }
    .end annotation

    move-object/from16 v11, p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->TAG:Ljava/lang/String;

    const-string v1, "addBodyTextContinuous()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->inlineImage:Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/word/utils/InlineImage;->clear()V

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->getStartIndex()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;->getEndIndex()I

    move-result v1

    iget v2, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move/from16 v3, p5

    move/from16 v4, p6

    if-ne v3, v4, :cond_1

    iget v3, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    invoke-virtual {v11, v1}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->countLinesBefore(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->lineCountBefore:I

    :cond_1
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    array-length v1, v12

    if-lez v1, :cond_5

    const/4 v13, 0x0

    aget-object v1, v12, v13

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v14, 0x1

    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v1, v14

    goto :goto_0

    :cond_2
    move v1, v13

    :goto_0
    move v15, v1

    move/from16 v16, v2

    :goto_1
    array-length v1, v12

    if-ge v15, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v1

    iget-object v2, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    if-nez v2, :cond_3

    iput-object v1, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    invoke-virtual {v1, v14}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setPageBreak(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v1

    :cond_3
    move-object v5, v1

    if-eqz v15, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    move/from16 v17, v0

    aget-object v0, v12, v15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v8, v17, v0

    new-instance v18, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;

    iget-object v0, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v4

    iget-object v0, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mHelper:Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;

    move-object v9, v0

    check-cast v9, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

    const/4 v10, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;IIILcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;Z)V

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/senl/nt/word/word/controller/BodyTextWordController;->processItem()V

    aget-object v0, v12, v15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v17, v0

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public addHandwriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setPageBreak(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    :goto_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/word/word/controller/HandwritingWordController;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/word/word/controller/HandwritingWordController;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->addHandwriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V

    return-void
.end method

.method public addItemsOfPage(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/HashMap;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->TAG:Ljava/lang/String;

    const-string v1, "addItemsOfPage()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setPageBreak(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    goto :goto_1

    :cond_1
    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    const/16 v1, 0xa

    if-eqz p5, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    if-eq v2, v1, :cond_5

    :cond_4
    if-nez p5, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    if-eq v2, v1, :cond_3

    :cond_5
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->processObject(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public addRecognizeText(Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->TAG:Ljava/lang/String;

    const-string v3, "addRecognizeText()"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setPageBreak(Z)V

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    iget-object v6, v6, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    iget-object v7, v7, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x42480000    # 50.0f

    add-float/2addr v9, v5

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v7, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iput v7, v8, Landroid/graphics/RectF;->bottom:F

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget-boolean v6, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v6, :cond_4

    iget v6, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v7

    iget v8, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    iget-object v9, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v9

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v12

    move-object v11, v0

    invoke-static/range {v6 .. v12}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectContinuousPage(IIIIILandroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v6

    move-object/from16 v8, p2

    goto :goto_3

    :cond_4
    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v6

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v7

    move-object/from16 v8, p2

    invoke-static {v8, v6, v7, v0}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectF(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    :goto_3
    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOfficeElement:Ljava/lang/Object;

    check-cast v7, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v7}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-static {}, Lcom/microsoft/schemas/vml/CTGroup$Factory;->newInstance()Lcom/microsoft/schemas/vml/CTGroup;

    move-result-object v21

    const-wide/high16 v9, -0x3fbb000000000000L    # -42.0

    invoke-static {v9, v10}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v10

    iget v9, v6, Landroid/graphics/RectF;->top:F

    float-to-double v12, v9

    invoke-static {v12, v13}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v12

    iget-object v9, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v9

    int-to-double v14, v9

    invoke-static {v14, v15}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v14

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v22, v5

    float-to-double v4, v6

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->dpToPt(D)D

    move-result-wide v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v9, v21

    invoke-static/range {v9 .. v20}, Lcom/samsung/android/support/senl/nt/word/word/utils/WordUtils;->createCTTxbxContent(Lcom/microsoft/schemas/vml/CTGroup;DDDDFZZ)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    iget-object v10, v9, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget v11, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_5

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    new-instance v6, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v10

    invoke-virtual {v7}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    const-wide v10, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v6, v10, v11}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingBetween(D)V

    invoke-virtual {v6}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v6

    iget-object v10, v9, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->str:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setText(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getFontSizeTextRecognize(I)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setFontSize(I)V

    const-string v10, "Calibri"

    invoke-virtual {v6, v10}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setFontFamily(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget v11, v9, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->strokeColor:I

    invoke-virtual {v10, v11}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->toHexaStringColor(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setColor(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->results:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v6, v3

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_7

    invoke-interface/range {v21 .. v21}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture$Factory;->parse(Lorg/w3c/dom/Node;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    move-result-object v0

    invoke-virtual {v7}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewPict()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    iget v5, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    invoke-interface {v4, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->setPictArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;)V

    iget v0, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->indexTextbox:I
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/support/senl/nt/word/word/WordView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add text recognize error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    move-object/from16 v5, v22

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    return-void
.end method

.method public configLib()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->configLib()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->configLatexParser()V

    return-void
.end method

.method public bridge synthetic createDocument()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    return-object v0
.end method

.method public createDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 5

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->isSetSectPr()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    :cond_1
    :try_start_0
    const-string v2, "<w:pgSz xmlns:w=\"http://schemas.openxmlformats.org/wordprocessingml/2006/main\" w:h=\"16840\" w:w=\"11900\"/>"

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr$Factory;->parse(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    check-cast v3, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/word/word/utils/WordUtils;->configPageMargin(Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar$Factory;->parse(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->setPgMar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;)V

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->setSectPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WordView"

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set page size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mOffice:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationRight(I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationLeft(I)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingBetween(D)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingAfter(I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingBefore(I)V

    return-object v0
.end method

.method public getContinueIndex(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;I)Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "I)",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFDocument;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">.ContinueIndex;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->currentLine:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLinePosition(I)Landroid/graphics/RectF;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v6, v5

    iget v5, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    int-to-float v5, p2

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_2

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineStartIndex(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineEndIndex(I)I

    move-result v5

    if-ne v4, v2, :cond_1

    move v4, v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    iget v3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->currentLine:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->currentLine:I

    move v3, v5

    goto :goto_1

    :cond_2
    int-to-float v5, p2

    cmpl-float v5, v6, v5

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    new-instance p1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v4, v3, p2}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView$ContinueIndex;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;IIF)V

    return-object p1
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".docx"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/WordView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public initHelper(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    check-cast v1, Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;

    invoke-direct {v0, v1, p1, p0}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;-><init>(Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mHelper:Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;

    return-void
.end method

.method public bridge synthetic writeToFile(Ljava/lang/Object;Ljava/io/BufferedOutputStream;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->writeToFile(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Ljava/io/BufferedOutputStream;)V

    return-void
.end method

.method public writeToFile(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Ljava/io/BufferedOutputStream;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/POIXMLDocument;->write(Ljava/io/OutputStream;)V

    return-void
.end method
