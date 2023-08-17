.class public Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_EXCEPTION:I = -0x1

.field public static final ERROR_CODE_NOT_SUPPORTED:I = -0x2

.field public static final ERROR_CODE_NO_FREE_SPACE:I = -0x4

.field public static final ERROR_CODE_PROCESS_STOPPED:I = -0x5

.field public static final ERROR_CODE_WRONG_PWD:I = -0x3

.field private static final TAG:Ljava/lang/String; = "XMLParser"

.field public static final XML_CONTENT_FILE:Ljava/lang/String; = "/snote/snote.xml"

.field public static final XML_SETTINGS_FILE:Ljava/lang/String; = "/snote/settings.xml"

.field private static instance:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;


# instance fields
.field private content:Ljava/lang/String;

.field private createdTime:J

.field private modifiedTime:J

.field private templateType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->instance:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->instance:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->instance:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->createdTime:J

    return-wide v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->modifiedTime:J

    return-wide v0
.end method

.method public getTemplateType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->templateType:Ljava/lang/String;

    return-object v0
.end method

.method public parseXMLContent(Ljava/lang/String;)I
    .locals 11

    const-string v0, "/snote/snote.xml"

    const-string v1, "Exception during SAX initialization."

    const-string v2, "Exception during closing InputStream."

    const-string v3, "XMLParser"

    const/4 v4, 0x0

    const/4 v5, -0x2

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;

    invoke-direct {v7, v4}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;-><init>(Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$1;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->getContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->content:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v5, 0x0

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v4, v8

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v4, v8

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v4, v8

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v4, v8

    goto :goto_3

    :catch_4
    move-exception p1

    move-object v4, v8

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception p1

    :goto_1
    :try_start_3
    const-string v0, "Exception during XML parsing."

    invoke-static {v3, v0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_7
    move-exception v1

    :goto_2
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not found."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_8
    move-exception p1

    :goto_3
    :try_start_7
    invoke-static {v3, v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_0

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_9
    move-exception p1

    :goto_4
    :try_start_9
    invoke-static {v3, v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v4, :cond_0

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_0
    :goto_5
    return v5

    :goto_6
    if-eqz v4, :cond_1

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_7

    :catch_a
    move-exception v0

    invoke-static {v3, v2, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_7
    throw p1
.end method

.method public parseXMLSettings(Ljava/lang/String;)I
    .locals 11

    const-string v0, "/snote/settings.xml"

    const-string v1, "Exception during SAX initialization."

    const-string v2, "Exception during InputStream close."

    const-string v3, "XMLParser"

    const/4 v4, 0x0

    const/4 v5, -0x2

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;

    invoke-direct {v7, v4}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;-><init>(Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$1;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->getTemplateType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->templateType:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->getCreatedTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->createdTime:J

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->getModifiedTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;->modifiedTime:J
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v5, 0x0

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v4, v8

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v4, v8

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v4, v8

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v4, v8

    goto :goto_3

    :catch_4
    move-exception p1

    move-object v4, v8

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception p1

    :goto_1
    :try_start_3
    const-string v0, "Exception during XML parsing."

    invoke-static {v3, v0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_7
    move-exception v1

    :goto_2
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not found."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_8
    move-exception p1

    :goto_3
    :try_start_7
    invoke-static {v3, v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_0

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_9
    move-exception p1

    :goto_4
    :try_start_9
    invoke-static {v3, v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v4, :cond_0

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_0
    :goto_5
    return v5

    :goto_6
    if-eqz v4, :cond_1

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_7

    :catch_a
    move-exception v0

    invoke-static {v3, v2, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_7
    throw p1
.end method
