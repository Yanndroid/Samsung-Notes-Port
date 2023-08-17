.class Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;
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
    name = "SerializedInteriorObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public transient _impl:Lorg/apache/xmlbeans/XmlObject;

.field public transient _root:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;->_impl:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;->_root:Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/values/XmlObjectBase$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method private distanceToRoot()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;->_impl:Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isNone()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isNamespace()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return v1
.end method

.method private objectAtDistance(I)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;->_root:Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isNamespace()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;->_root:Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;->objectAtDistance(I)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;->_impl:Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;->_impl:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;->_root:Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$SerializedInteriorObject;->distanceToRoot()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method
