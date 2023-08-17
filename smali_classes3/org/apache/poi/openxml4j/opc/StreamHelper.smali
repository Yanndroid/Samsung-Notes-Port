.class public final Lorg/apache/poi/openxml4j/opc/StreamHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final transformerFactory:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/StreamHelper;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 3

    const/16 v0, 0x400

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method private static declared-synchronized getIdentityTransformer()Ljavax/xml/transform/Transformer;
    .locals 2

    const-class v0, Lorg/apache/poi/openxml4j/opc/StreamHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/openxml4j/opc/StreamHelper;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static saveXmlInStream(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->getIdentityTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    new-instance v2, Lorg/apache/poi/openxml4j/opc/StreamHelper$1;

    invoke-direct {v2, p1}, Lorg/apache/poi/openxml4j/opc/StreamHelper$1;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    const-string p1, "encoding"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "indent"

    const-string v2, "no"

    invoke-virtual {v0, p1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "standalone"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, p1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
