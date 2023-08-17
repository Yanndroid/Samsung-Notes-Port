.class Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializedRootObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public transient _impl:Lorg/apache/xmlbeans/XmlObject;

.field public transient _xbeanClass:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;->_xbeanClass:Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;->_impl:Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/values/XmlObjectBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;-><init>(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;->_xbeanClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnsignedShort()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v0, " not supported."

    const-string v3, "."

    const-string v4, "Deserialization error: version number "

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    if-ne v2, v5, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;->readObjectV0(Ljava/io/ObjectInputStream;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    new-instance p1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {p1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;->_xbeanClass:Ljava/lang/Class;

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->typeForClass(Ljava/lang/Class;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;->_impl:Lorg/apache/xmlbeans/XmlObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method private readObjectV0(Ljava/io/ObjectInputStream;I)Ljava/lang/String;
    .locals 5

    add-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    :goto_0
    if-ge v2, p2, :cond_1

    add-int/lit8 v1, v2, 0x2

    sub-int v3, p2, v2

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/ObjectInputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v2, p2, :cond_3

    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_2
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Error reading backwards compatible XmlObject: number of bytes read ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ") != number expected ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;->_impl:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;->_xbeanClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedRootObject;->_impl:Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method
