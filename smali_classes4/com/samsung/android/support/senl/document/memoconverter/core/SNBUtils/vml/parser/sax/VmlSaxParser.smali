.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mMetaDataInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVmlData:Ljava/lang/String;

.field private mVmlDataInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetaDataInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;->mMetaDataInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVmlData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;->mVmlData:Ljava/lang/String;

    return-object v0
.end method

.method public parse()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;->mMetaDataInfos:Ljava/util/ArrayList;

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;->mMetaDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setMetaDataList(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->resetGroup()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;->mVmlDataInputStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setMetaDataInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;->mMetaDataInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public setVmlData(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;->mVmlDataInputStream:Ljava/io/InputStream;

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;->mVmlData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setVmlData(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;->mVmlData:Ljava/lang/String;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParser;->mVmlDataInputStream:Ljava/io/InputStream;

    return-void
.end method
