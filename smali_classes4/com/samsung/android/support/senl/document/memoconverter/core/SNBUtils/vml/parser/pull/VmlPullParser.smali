.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mMetaDataInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVmlData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mVmlData:Ljava/lang/String;

    return-object v0
.end method

.method public getVmlDataInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mVmlDataInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public parse()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mVmlData:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-object v1, v0

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mMetaDataInfos:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParserHandler;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParserHandler;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParserHandler;->setParser(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mMetaDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParserHandler;->setMetaDataList(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParserHandler;->resetShapes()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParserHandler;->resetElements()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParserHandler;->resetGroup()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParserHandler;->parse()V

    :cond_1
    :goto_2
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mMetaDataInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public setVmlData(Ljava/io/InputStream;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->setVmlDataInputStream(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mVmlData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setVmlData(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mVmlData:Ljava/lang/String;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mVmlDataInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setVmlDataInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/pull/VmlPullParser;->mVmlDataInputStream:Ljava/io/InputStream;

    return-void
.end method
