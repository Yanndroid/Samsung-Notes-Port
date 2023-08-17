.class Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XsbReader"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public _actualfiletype:I

.field public _handle:Ljava/lang/String;

.field public _input:Ljava/io/DataInputStream;

.field private _majorver:I

.field private _minorver:I

.field public _output:Ljava/io/DataOutputStream;

.field private _releaseno:I

.field public _stringPool:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_stringPool:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;I)V
    .locals 5

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$000(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".xsb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->getLoaderStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_input:Ljava/io/DataInputStream;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readInt()I

    move-result v0

    const v1, -0x25854542

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_majorver:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_minorver:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_majorver:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    const/16 v1, 0x18

    const/4 v4, 0x3

    if-gt v0, v1, :cond_4

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    const/16 v0, 0x12

    invoke-virtual {p0, v3, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_releaseno:I

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    if-eq v0, p3, :cond_2

    const v1, 0xffff

    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "XML-BEANS compiled schema: File has the wrong type - expecting type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, ", got type "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {v1, p3, p1, p2, v0}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_2
    :goto_0
    new-instance p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_stringPool:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_input:Ljava/io/DataInputStream;

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;->readFrom(Ljava/io/DataInputStream;)V

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_actualfiletype:I

    return-void

    :cond_3
    new-instance p3, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "XML-BEANS compiled schema: Incompatible minor version - expecting at least 14, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_minorver:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1, p2, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p3

    :cond_4
    new-instance p3, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "XML-BEANS compiled schema: Incompatible minor version - expecting up to 24, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_minorver:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1, p2, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p3

    :cond_5
    new-instance p3, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "XML-BEANS compiled schema: Wrong major version - expecting 2, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_majorver:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1, p2, v3}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p3

    :cond_6
    new-instance p3, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "XML-BEANS compiled schema: Wrong magic cookie"

    invoke-direct {p3, v1, p1, p2, v0}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p3

    :cond_7
    new-instance p3, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "XML-BEANS compiled schema: Could not locate compiled schema resource "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1, p2, v2}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p3
.end method


# virtual methods
.method public atLeast(III)Z
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_majorver:I

    const/4 v1, 0x1

    if-le v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-ge v0, p1, :cond_1

    return v2

    :cond_1
    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_minorver:I

    if-le p1, p2, :cond_2

    return v1

    :cond_2
    if-ge p1, p2, :cond_3

    return v2

    :cond_3
    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_releaseno:I

    if-lt p1, p3, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1
.end method

.method public atMost(III)Z
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_majorver:I

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_1

    return v2

    :cond_1
    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_minorver:I

    if-le p1, p2, :cond_2

    return v1

    :cond_2
    if-ge p1, p2, :cond_3

    return v2

    :cond_3
    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_releaseno:I

    if-gt p1, p3, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public checkContainerNotNull(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/LinkageError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Loading of resource "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "failed, information from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".index.xsb is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " out of sync (or conflicting index files found)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fileTypeFromComponentType(I)I
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected component type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0x8

    return p1

    :cond_2
    const/4 p1, 0x7

    return p1

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x2

    return p1
.end method

.method public finishLoadingAttribute()Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$1100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->checkContainerNotNull(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    invoke-direct {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->loadAttribute(Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->setFilename(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/SchemaTypeLoaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v2, "Cannot load type from typesystem"

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v5, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    throw v0
.end method

.method public finishLoadingAttributeGroup()Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 13

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$1100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->checkContainerNotNull(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    new-instance v9, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    invoke-direct {v9, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v3

    const/4 v4, 0x1

    const/4 v10, 0x0

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    const/16 v5, 0x16

    const/4 v11, 0x2

    invoke-virtual {p0, v11, v5, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0xf

    invoke-virtual {p0, v11, v6, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v10

    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupDocument$Factory;->parse(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupDocument;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AttributeGroupDocument;->getAttributeGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;

    move-result-object v7

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v8

    const/4 v12, 0x0

    move-object v0, v9

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->init(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;ZLjava/lang/String;ZLorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    const/16 v0, 0x15

    invoke-virtual {p0, v11, v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->setFilename(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/SchemaTypeLoaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    return-object v9

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v2, "Cannot load type from typesystem"

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v5, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    throw v0
.end method

.method public finishLoadingElement()Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v5}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$1100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->checkContainerNotNull(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    new-instance v7, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;

    invoke-direct {v7, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    invoke-virtual {v7, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {v7, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    and-int/lit8 v0, v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {v7, v4, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionRules(Lorg/apache/xmlbeans/QNameSet;Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setNameAndTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v7, v0, v4, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setDefault(Ljava/lang/String;ZLorg/apache/xmlbeans/XmlObject;)V

    const/16 v0, 0x10

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readXmlValueObject()Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setDefaultValue(Lorg/apache/xmlbeans/impl/schema/XmlValueRef;)V

    :cond_2
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setNillable(Z)V

    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_5

    :cond_6
    move v8, v3

    :goto_5
    invoke-virtual {v7, v0, v5, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setBlock(ZZZ)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readSOAPArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setWsdlArrayType(Lorg/apache/xmlbeans/soap/SOAPArrayType;)V

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v3

    :goto_6
    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setAbstract(Z)V

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v3

    :goto_7
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move v2, v3

    :goto_8
    invoke-virtual {v7, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->setFinal(ZZ)V

    const/16 v0, 0x11

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandle()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->setSubstitutionGroup(Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;)V

    :cond_a
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    move v1, v3

    :goto_9
    if-ge v1, v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->addSubstitutionGroupMember(Lorg/apache/poi/javax/xml/namespace/QName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    :goto_a
    if-ge v3, v0, :cond_c

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandle()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->setFilename(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/SchemaTypeLoaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    return-object v7

    :cond_d
    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v1, "Wrong particle type "

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Lorg/apache/xmlbeans/SchemaTypeLoaderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_2
    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v2, "Cannot load type from typesystem"

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xe

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    throw v0
.end method

.method public finishLoadingIdentityConstraint()Lorg/apache/xmlbeans/SchemaIdentityConstraint;
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$1100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->checkContainerNotNull(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    invoke-direct {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setConstraintCategory(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setSelector(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setFields([Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->getConstraintCategory()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandle()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setReferencedKey(Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setNSMap(Ljava/util/Map;)V

    const/16 v0, 0x15

    invoke-virtual {p0, v1, v0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;->setFilename(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/SchemaTypeLoaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v2, "Cannot load type from typesystem"

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v5, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    throw v0
.end method

.method public finishLoadingModelGroup()Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 14

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$1100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->checkContainerNotNull(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    new-instance v10, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    invoke-direct {v10, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v3

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v11

    :goto_0
    const/16 v5, 0x16

    const/4 v12, 0x2

    invoke-virtual {p0, v12, v5, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    invoke-virtual {p0, v12, v5, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v7

    :goto_2
    const/16 v7, 0xf

    invoke-virtual {p0, v12, v7, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v7

    if-ne v7, v4, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v11

    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupDocument$Factory;->parse(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupDocument;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/GroupDocument;->getGroup()Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;

    move-result-object v8

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v9

    const/4 v13, 0x0

    move-object v0, v10

    move-object v4, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v13

    invoke-virtual/range {v0 .. v9}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->init(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    const/16 v0, 0x15

    invoke-virtual {p0, v12, v0, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->setFilename(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/SchemaTypeLoaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    return-object v10

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v2, "Cannot load type from typesystem"

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v5, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    throw v0
.end method

.method public finishLoadingType()Lorg/apache/xmlbeans/SchemaType;
    .locals 22

    move-object/from16 v1, p0

    const-string v2, ""

    :try_start_0
    iget-object v3, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v3, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$800(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v3

    new-instance v10, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 v11, 0x1

    invoke-direct {v10, v3, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOuterSchemaTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v3

    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v3

    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v4

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eq v4, v11, :cond_2

    if-eq v4, v13, :cond_1

    if-eq v4, v12, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v4

    invoke-virtual {v10, v13, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContainerFieldIndex(SI)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v4

    invoke-virtual {v10, v11, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContainerFieldIndex(SI)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandle()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContainerFieldRef(Lorg/apache/xmlbeans/SchemaComponent$Ref;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v2

    :cond_3
    invoke-virtual {v10, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFullJavaName(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v4

    :goto_1
    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFullJavaImplName(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRefArray()[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v2

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousUnionMemberOrdinal(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readInt()I

    move-result v2

    and-int/lit8 v4, v2, 0x1

    const/4 v14, 0x0

    if-nez v4, :cond_5

    move v15, v11

    goto :goto_2

    :cond_5
    move v15, v14

    :goto_2
    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_6

    move v4, v11

    goto :goto_3

    :cond_6
    move v4, v14

    :goto_3
    invoke-virtual {v10, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setCompiled(Z)V

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_7

    move v4, v11

    goto :goto_4

    :cond_7
    move v4, v14

    :goto_4
    invoke-virtual {v10, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDocumentType(Z)V

    const/high16 v4, 0x80000

    and-int/2addr v4, v2

    if-eqz v4, :cond_8

    move v4, v11

    goto :goto_5

    :cond_8
    move v4, v14

    :goto_5
    invoke-virtual {v10, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAttributeType(Z)V

    if-nez v15, :cond_9

    move v4, v11

    goto :goto_6

    :cond_9
    move v4, v14

    :goto_6
    invoke-virtual {v10, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleType(Z)V

    const/high16 v16, 0x10000

    const/high16 v17, 0x20000

    const v18, 0x8000

    if-eqz v15, :cond_1d

    const/high16 v4, 0x40000

    and-int/2addr v4, v2

    if-eqz v4, :cond_a

    move v5, v11

    goto :goto_7

    :cond_a
    move v5, v14

    :goto_7
    and-int/lit16 v4, v2, 0x4000

    if-eqz v4, :cond_b

    move v6, v11

    goto :goto_8

    :cond_b
    move v6, v14

    :goto_8
    and-int v4, v2, v18

    if-eqz v4, :cond_c

    move v7, v11

    goto :goto_9

    :cond_c
    move v7, v14

    :goto_9
    and-int v4, v2, v17

    if-eqz v4, :cond_d

    move v8, v11

    goto :goto_a

    :cond_d
    move v8, v14

    :goto_a
    and-int v4, v2, v16

    if-eqz v4, :cond_e

    move v9, v11

    goto :goto_b

    :cond_e
    move v9, v14

    :goto_b
    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAbstractFinal(ZZZZZ)V

    and-int/lit16 v4, v2, 0x1000

    if-eqz v4, :cond_f

    move v4, v11

    goto :goto_c

    :cond_f
    move v4, v14

    :goto_c
    and-int/lit16 v5, v2, 0x2000

    if-eqz v5, :cond_10

    move v5, v11

    goto :goto_d

    :cond_10
    move v5, v14

    :goto_d
    invoke-virtual {v10, v4, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBlock(ZZ)V

    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_11

    move v4, v11

    goto :goto_e

    :cond_11
    move v4, v14

    :goto_e
    invoke-virtual {v10, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOrderSensitive(Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v9

    invoke-virtual {v10, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setComplexTypeVariety(I)V

    const/16 v4, 0x17

    invoke-virtual {v1, v13, v4, v14}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentBasedOnTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    :cond_12
    new-instance v8, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-direct {v8}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v4

    move v5, v14

    :goto_f
    if-ge v5, v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAttributeData()Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->addAttribute(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v4

    invoke-virtual {v8, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardProcess(I)V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v4

    move v5, v14

    :goto_10
    const/4 v6, 0x6

    if-ge v5, v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readPropertyData()Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-interface {v7, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_10

    :cond_14
    new-instance v2, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Attribute property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " is not an attribute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_15
    if-eq v9, v12, :cond_17

    const/4 v3, 0x4

    if-ne v9, v3, :cond_16

    goto :goto_11

    :cond_16
    move v4, v11

    move v3, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_14

    :cond_17
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readParticleArray()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v11, :cond_18

    aget-object v4, v4, v14

    goto :goto_12

    :cond_18
    array-length v4, v4

    if-nez v4, :cond_1c

    const/4 v4, 0x0

    :goto_12
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v14

    const/4 v12, 0x0

    :goto_13
    if-ge v12, v14, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readPropertyData()Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v20

    if-nez v20, :cond_19

    invoke-interface {v13}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v11

    invoke-interface {v5, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x1

    const/4 v13, 0x2

    goto :goto_13

    :cond_19
    new-instance v2, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Element property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " is not an element"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_1a
    move-object v12, v5

    move/from16 v21, v11

    move-object v11, v4

    move/from16 v4, v21

    :goto_14
    if-ne v3, v4, :cond_1b

    const/4 v3, 0x1

    goto :goto_15

    :cond_1b
    const/4 v3, 0x0

    :goto_15
    move-object v4, v10

    move-object v5, v11

    move-object v6, v8

    move-object v13, v7

    move-object v7, v12

    move-object v12, v8

    move-object v8, v13

    move v13, v9

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaAttributeModel;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-static {v11}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeEltWildcards(Lorg/apache/xmlbeans/SchemaParticle;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v3

    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->summarizeAttrWildcards(Lorg/apache/xmlbeans/SchemaAttributeModel;)Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;

    move-result-object v4

    iget-object v5, v3, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iget-boolean v3, v3, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    iget-object v6, v4, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->typedWildcards:Lorg/apache/xmlbeans/QNameSet;

    iget-boolean v4, v4, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$WildcardResult;->hasWildcards:Z

    invoke-virtual {v10, v5, v3, v6, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWildcardSummary(Lorg/apache/xmlbeans/QNameSet;ZLorg/apache/xmlbeans/QNameSet;Z)V

    move v9, v13

    goto :goto_16

    :cond_1c
    new-instance v2, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v3, "Content model not well-formed"

    iget-object v4, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/4 v6, 0x7

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_1d
    const/4 v9, 0x0

    :goto_16
    if-eqz v15, :cond_1e

    const/4 v3, 0x2

    if-ne v9, v3, :cond_34

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v3

    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleTypeVariety(I)V

    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_17

    :cond_1f
    const/4 v4, 0x0

    :goto_17
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    goto :goto_18

    :cond_20
    and-int/lit16 v5, v2, 0x400

    if-eqz v5, :cond_21

    const/4 v5, 0x2

    goto :goto_18

    :cond_21
    const/4 v5, 0x1

    :goto_18
    invoke-virtual {v10, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOrdered(I)V

    and-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    goto :goto_19

    :cond_22
    const/4 v5, 0x0

    :goto_19
    invoke-virtual {v10, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBounded(Z)V

    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    goto :goto_1a

    :cond_23
    const/4 v5, 0x0

    :goto_1a
    invoke-virtual {v10, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFinite(Z)V

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    goto :goto_1b

    :cond_24
    const/4 v5, 0x0

    :goto_1b
    invoke-virtual {v10, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setNumeric(Z)V

    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    goto :goto_1c

    :cond_25
    const/4 v5, 0x0

    :goto_1c
    invoke-virtual {v10, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionOfLists(Z)V

    and-int v5, v2, v18

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_1d

    :cond_26
    const/4 v5, 0x0

    :goto_1d
    and-int v6, v2, v17

    if-eqz v6, :cond_27

    const/4 v6, 0x1

    goto :goto_1e

    :cond_27
    const/4 v6, 0x0

    :goto_1e
    and-int v7, v2, v16

    if-eqz v7, :cond_28

    const/4 v7, 0x1

    goto :goto_1f

    :cond_28
    const/4 v7, 0x0

    :goto_1f
    invoke-virtual {v10, v5, v6, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleFinal(ZZZ)V

    const/16 v5, 0xc

    new-array v6, v5, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    new-array v5, v5, [Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v7

    const/4 v8, 0x0

    :goto_20
    if-ge v8, v7, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readXmlValueObject()Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v11

    aput-object v11, v6, v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_29

    const/4 v11, 0x1

    goto :goto_21

    :cond_29
    const/4 v11, 0x0

    :goto_21
    aput-boolean v11, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_2a
    invoke-virtual {v10, v6, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBasicFacets([Lorg/apache/xmlbeans/impl/schema/XmlValueRef;[Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v5

    invoke-virtual {v10, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWhiteSpaceRule(I)V

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_22

    :cond_2b
    const/4 v2, 0x0

    :goto_22
    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPatternFacet(Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v2

    new-array v5, v2, [Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v2, :cond_2c

    new-instance v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "X"

    invoke-direct {v7, v8, v9}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_2c
    invoke-virtual {v10, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPatterns([Lorg/apache/xmlbeans/impl/regex/RegularExpression;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v2

    new-array v5, v2, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const/4 v6, 0x0

    :goto_24
    if-ge v6, v2, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readXmlValueObject()Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_2d
    if-nez v2, :cond_2e

    const/4 v5, 0x0

    :cond_2e
    invoke-virtual {v10, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setEnumerationValues([Lorg/apache/xmlbeans/impl/schema/XmlValueRef;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseEnumTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    if-eqz v4, :cond_30

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v2

    new-array v4, v2, [Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    const/4 v14, 0x0

    :goto_25
    if-ge v14, v2, :cond_2f

    new-instance v5, Lorg/apache/xmlbeans/impl/schema/SchemaStringEnumEntryImpl;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaStringEnumEntryImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v5, v4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    :cond_2f
    invoke-virtual {v10, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setStringEnumEntries([Lorg/apache/xmlbeans/SchemaStringEnumEntry;)V

    :cond_30
    const/4 v2, 0x1

    if-eq v3, v2, :cond_33

    const/4 v2, 0x2

    if-eq v3, v2, :cond_32

    const/4 v2, 0x3

    if-ne v3, v2, :cond_31

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPrimitiveTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setListItemTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_26

    :cond_31
    new-instance v2, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v3, "Simple type does not have a recognized variety"

    iget-object v4, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v6, 0x8

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_32
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPrimitiveTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRefArray()[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionMemberTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_26

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPrimitiveTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readInt()I

    move-result v2

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDecimalSize(I)V

    :cond_34
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFilename(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    if-eqz v2, :cond_35

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$1100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->checkContainerNotNull(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v10, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContainer(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    goto :goto_28

    :cond_35
    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isDocumentType()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-object v3, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$1100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->checkContainerNotNull(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    :goto_27
    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContainer(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    goto :goto_28

    :cond_36
    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isAttributeType()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-object v3, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$1100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->checkContainerNotNull(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/poi/javax/xml/namespace/QName;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/SchemaTypeLoaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_27

    :cond_37
    :goto_28
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    return-object v10

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_29

    :catch_0
    move-exception v0

    move-object v9, v0

    :try_start_1
    new-instance v2, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v5, "Cannot load type from typesystem"

    iget-object v3, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v8, 0xe

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    move-object v2, v0

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_29
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    throw v2
.end method

.method public getActualFiletype()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_actualfiletype:I

    return v0
.end method

.method public getLoaderStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$1000(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/ResourceLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getSaverStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$900(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/Filer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/Filer;->createBinaryFile(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public loadAttribute(Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V
    .locals 11

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    const/16 v1, 0x10

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v1, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readXmlValueObject()Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readSOAPArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;

    move-result-object v8

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->init(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;ILjava/lang/String;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/XmlValueRef;ZLorg/apache/xmlbeans/soap/SOAPArrayType;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    return-void
.end method

.method public loadParticle(Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;I)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v1

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionRules(Lorg/apache/xmlbeans/QNameSet;Z)V

    if-eq p2, v4, :cond_b

    const/4 v1, 0x2

    if-eq p2, v1, :cond_b

    const/4 v2, 0x3

    if-eq p2, v2, :cond_b

    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setWildcardProcess(I)V

    goto/16 :goto_8

    :cond_1
    new-instance p1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "Unrecognized particle type "

    invoke-direct {p1, v2, p2, v0, v1}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_2
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setNameAndTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object p2

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p1, p2, v2, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setDefault(Ljava/lang/String;ZLorg/apache/xmlbeans/XmlObject;)V

    const/16 p2, 0x10

    invoke-virtual {p0, v1, p2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readXmlValueObject()Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setDefaultValue(Lorg/apache/xmlbeans/impl/schema/XmlValueRef;)V

    :cond_4
    and-int/lit8 p2, v0, 0x8

    if-eqz p2, :cond_5

    move p2, v4

    goto :goto_2

    :cond_5
    move p2, v3

    :goto_2
    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setNillable(Z)V

    and-int/lit8 p2, v0, 0x10

    if-eqz p2, :cond_6

    move p2, v4

    goto :goto_3

    :cond_6
    move p2, v3

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_4

    :cond_7
    move v1, v3

    :goto_4
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    invoke-virtual {p1, p2, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setBlock(ZZZ)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readSOAPArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setWsdlArrayType(Lorg/apache/xmlbeans/soap/SOAPArrayType;)V

    and-int/lit16 p2, v0, 0x80

    if-eqz p2, :cond_9

    goto :goto_6

    :cond_9
    move v4, v3

    :goto_6
    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setAbstract(Z)V

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result p2

    new-array v0, p2, [Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    :goto_7
    if-ge v3, p2, :cond_a

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandle()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->setIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readParticleArray()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleChildren([Lorg/apache/xmlbeans/SchemaParticle;)V

    :goto_8
    return-void
.end method

.method public readAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)Lorg/apache/xmlbeans/SchemaAnnotation;
    .locals 10

    const/4 v0, 0x2

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readInt()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    return-object v3

    :cond_1
    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x18

    invoke-virtual {p0, v0, v8, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v3

    :goto_1
    new-instance v9, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;

    invoke-direct {v9, v6, v7, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readInt()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readInt()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    :goto_3
    if-ge v2, v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    invoke-direct {v0, p1, v3, v1, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;[Ljava/lang/String;[Ljava/lang/String;[Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;)V

    return-object v0
.end method

.method public readAnnotations()Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    const-string v3, ""

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$800(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readAttributeData()Lorg/apache/xmlbeans/SchemaLocalAttribute;
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->loadAttribute(Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    return-object v0
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readByteArray()[B

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    aget-byte v1, v0, v2

    if-nez v1, :cond_1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    :cond_1
    array-length v1, v0

    if-ne v1, v3, :cond_2

    aget-byte v1, v0, v2

    if-ne v1, v3, :cond_2

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object v0

    :cond_2
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method public readByteArray()[B
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public readClassnameRefMap()Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandle()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readDouble()D
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public readEnd()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_input:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_input:Ljava/io/DataInputStream;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_stringPool:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    return-void
.end method

.method public readExtensionsList()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public readHandle()Lorg/apache/xmlbeans/SchemaComponent$Ref;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->refForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    const/4 v3, 0x4

    if-eq v1, v2, :cond_a

    const/16 v2, 0x49

    if-eq v1, v2, :cond_8

    const/16 v2, 0x59

    const/16 v4, 0xd

    if-eq v1, v2, :cond_6

    const/16 v2, 0x44

    if-eq v1, v2, :cond_5

    const/16 v2, 0x45

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    new-instance v1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot resolve handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :pswitch_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forPretty(Ljava/lang/String;I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forPretty(Ljava/lang/String;I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot resolve element for handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :pswitch_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forPretty(Ljava/lang/String;I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot resolve attribute for handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :pswitch_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forPretty(Ljava/lang/String;I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forPretty(Ljava/lang/String;I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forPretty(Ljava/lang/String;I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forPretty(Ljava/lang/String;I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forPretty(Ljava/lang/String;I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/SchemaTypeLoader;->typeForSignature(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot resolve type for handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_8
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->get()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaType;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->get()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forPretty(Ljava/lang/String;I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readHandlePool(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)V
    .locals 5

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->access$600(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->access$700(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    new-instance v3, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Schema index has an unrecognized entry of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_1
    new-instance v3, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v3, Lorg/apache/xmlbeans/SchemaType$Ref;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xmlbeans/SchemaType$Ref;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->access$600(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonempty handle set before read"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readInt()I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public readNamespaces()Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readParticleArray()[Lorg/apache/xmlbeans/SchemaParticle;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaParticle;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readParticleData()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readParticleData()Lorg/apache/xmlbeans/SchemaParticle;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;-><init>()V

    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->loadParticle(Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;I)V

    return-object v1
.end method

.method public readPropertyData()Lorg/apache/xmlbeans/SchemaProperty;
    .locals 7

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setAttribute(Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setContainerTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setNillable(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setDefault(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setFixed(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setDefaultText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setJavaPropertyName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setJavaTypeCode(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v0, v2, v5, v6, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setExtendsJava(Lorg/apache/xmlbeans/SchemaType$Ref;ZZZ)V

    const/16 v1, 0x13

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atMost(III)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setJavaSetterDelimiter(Lorg/apache/xmlbeans/QNameSet;)V

    :cond_4
    const/16 v1, 0x10

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readXmlValueObject()Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setDefaultValue(Lorg/apache/xmlbeans/impl/schema/XmlValueRef;)V

    :cond_5
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->isAttribute()Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x11

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    :goto_4
    if-ge v4, v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setAcceptedNames(Ljava/util/Set;)V

    :cond_7
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setImmutable()V

    return-object v0
.end method

.method public readQName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public readQNameRefMap()Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandle()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readQNameRefMapAsList(Ljava/util/List;)Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandle()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readQNameSet()Lorg/apache/xmlbeans/QNameSet;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    invoke-static {v1, v3, v2, v4}, Lorg/apache/xmlbeans/QNameSet;->forSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v3, v1, v4, v2}, Lorg/apache/xmlbeans/QNameSet;->forSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    return-object v0
.end method

.method public readSOAPArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lorg/apache/xmlbeans/soap/SOAPArrayType;

    invoke-direct {v2, v0, v1}, Lorg/apache/xmlbeans/soap/SOAPArrayType;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    return-object v2
.end method

.method public readShort()I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_stringPool:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;->stringForCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandle()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object v0
.end method

.method public readTypeRefArray()[Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v0

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaType$Ref;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readXmlValueObject()Lorg/apache/xmlbeans/impl/schema/XmlValueRef;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readTypeRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v2

    if-eqz v2, :cond_4

    const v3, 0xffff

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->$assertionsDisabled:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    new-instance v2, Ljava/lang/Double;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readDouble()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/SchemaType$Ref;Ljava/lang/Object;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/SchemaType$Ref;Ljava/lang/Object;)V

    return-object v1

    :pswitch_2
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readByteArray()[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/SchemaType$Ref;Ljava/lang/Object;)V

    return-object v1

    :pswitch_3
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/SchemaType$Ref;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readShort()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readXmlValueObject()Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/SchemaType$Ref;Ljava/lang/Object;)V

    return-object v1

    :cond_4
    :goto_1
    new-instance v2, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-direct {v2, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/SchemaType$Ref;Ljava/lang/Object;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public writeAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeInt(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaAnnotation;->getAttributes()[Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;->getValueUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaAnnotation;->getUserInformation()[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeInt(I)V

    new-instance v2, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v2}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlOptions;->setSaveOuter()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlOptions;->setSaveAggressiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v2

    move v3, v1

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-interface {v4, v2}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaAnnotation;->getApplicationInformation()[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeInt(I)V

    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_3

    aget-object v0, p1, v1

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public writeAnnotations([Lorg/apache/xmlbeans/SchemaAnnotation;)V
    .locals 2

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeAttributeData(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaLocalAttribute;->getUse()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getDefaultText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getDefaultValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeXmlValueObject(Lorg/apache/xmlbeans/XmlAnySimpleType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->isFixed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/soap/SchemaWSDLArrayType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/soap/SchemaWSDLArrayType;->getWSDLArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeSOAPArrayType(Lorg/apache/xmlbeans/soap/SOAPArrayType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaAnnotated;->getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    return-void
.end method

.method public writeAttributeGroupData(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V
    .locals 2

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getFormDefault()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->isRedefinition()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveOuter()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeGroupImpl;->getSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)V
    .locals 2

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeBigInteger(Ljava/math/BigInteger;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->SINGLE_ZERO_BYTE:[B

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeByteArray([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeByteArray([B)V

    :goto_0
    return-void
.end method

.method public writeByteArray([B)V
    .locals 4

    :try_start_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_output:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public writeClassnameMap(Ljava/util/Map;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeDocumentTypeMap([Lorg/apache/xmlbeans/SchemaType;)V
    .locals 2

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_output:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-direct {p2, p1, v0, v1, v2}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public writeEnd()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_output:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_output:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_stringPool:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V
    .locals 4

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getComponentType()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot write handle for component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_XM_"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_XD_"

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_XN_"

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_XA_"

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_XE_"

    goto :goto_0

    :cond_7
    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isBuiltinType()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_BI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_XT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_XO_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_XY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :goto_5
    return-void

    :cond_b
    :goto_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForComponent(Lorg/apache/xmlbeans/SchemaComponent;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2
.end method

.method public writeHandlePool(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)V
    .locals 3

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->access$500(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->access$500(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->access$500(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaComponent;->getComponentType()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->fileTypeFromComponentType(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeIdConstraintData(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaIdentityConstraint;->getConstraintCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaIdentityConstraint;->getSelector()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaAnnotated;->getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaIdentityConstraint;->getFields()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaIdentityConstraint;->getConstraintCategory()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaIdentityConstraint;->getReferencedKey()Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaIdentityConstraint;->getNSMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeIndexData()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandlePool(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameMap([Lorg/apache/xmlbeans/SchemaComponent;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameMap([Lorg/apache/xmlbeans/SchemaComponent;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameMap([Lorg/apache/xmlbeans/SchemaComponent;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameMap([Lorg/apache/xmlbeans/SchemaComponent;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->identityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameMap([Lorg/apache/xmlbeans/SchemaComponent;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameMap([Lorg/apache/xmlbeans/SchemaComponent;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeDocumentTypeMap([Lorg/apache/xmlbeans/SchemaType;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$300(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeClassnameMap(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$400(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeNamespaces(Ljava/util/Set;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameMap([Lorg/apache/xmlbeans/SchemaComponent;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameMap([Lorg/apache/xmlbeans/SchemaComponent;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameMap([Lorg/apache/xmlbeans/SchemaComponent;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->annotations()[Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAnnotations([Lorg/apache/xmlbeans/SchemaAnnotation;)V

    return-void
.end method

.method public writeInt(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_output:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public writeModelGroupData(Lorg/apache/xmlbeans/SchemaModelGroup;)V
    .locals 2

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getElemFormDefault()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->isRedefinition()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveOuter()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;->getSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeNamespaces(Ljava/util/Set;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeParticleArray([Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 2

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeParticleData(Lorg/apache/xmlbeans/SchemaParticle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeParticleData(Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    int-to-short v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    move-object v3, p1

    check-cast v3, Lorg/apache/xmlbeans/SchemaLocalElement;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaField;->isFixed()Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    :cond_1
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaField;->isNillable()Z

    move-result v5

    if-eqz v5, :cond_2

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    :cond_2
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaLocalElement;->blockExtension()Z

    move-result v5

    if-eqz v5, :cond_3

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    :cond_3
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaLocalElement;->blockRestriction()Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    :cond_4
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaLocalElement;->blockSubstitution()Z

    move-result v5

    if-eqz v5, :cond_5

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    :cond_5
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaLocalElement;->isAbstract()Z

    move-result v5

    if-eqz v5, :cond_6

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    :cond_6
    instance-of v5, v3, Lorg/apache/xmlbeans/SchemaGlobalElement;

    if-eqz v5, :cond_8

    check-cast v3, Lorg/apache/xmlbeans/SchemaGlobalElement;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaGlobalElement;->finalExtension()Z

    move-result v5

    if-eqz v5, :cond_7

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    :cond_7
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaGlobalElement;->finalRestriction()Z

    move-result v3

    if-eqz v3, :cond_8

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeBigInteger(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeBigInteger(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameSet(Lorg/apache/xmlbeans/QNameSet;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    if-eq v0, v2, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    if-eq v0, v4, :cond_a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameSet(Lorg/apache/xmlbeans/QNameSet;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getWildcardProcess()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    goto/16 :goto_3

    :cond_9
    new-instance p1, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v2, 0xb

    const-string v3, "Unrecognized particle type "

    invoke-direct {p1, v3, v0, v1, v2}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_a
    check-cast p1, Lorg/apache/xmlbeans/SchemaLocalElement;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getDefaultText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getDefaultValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeXmlValueObject(Lorg/apache/xmlbeans/XmlAnySimpleType;)V

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/soap/SchemaWSDLArrayType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/soap/SchemaWSDLArrayType;->getWSDLArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeSOAPArrayType(Lorg/apache/xmlbeans/soap/SOAPArrayType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaAnnotated;->getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaGlobalElement;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/SchemaGlobalElement;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaGlobalElement;->substitutionGroup()Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaGlobalElement;->substitutionGroupMembers()[Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_b

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaLocalElement;->getIdentityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_d

    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeParticleArray([Lorg/apache/xmlbeans/SchemaParticle;)V

    :cond_d
    :goto_3
    return-void
.end method

.method public writePropertyData(Lorg/apache/xmlbeans/SchemaProperty;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaSingleton()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaOption()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaArray()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getContainerType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeBigInteger(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeBigInteger(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeXmlValueObject(Lorg/apache/xmlbeans/XmlAnySimpleType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->acceptedNames()[Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    :goto_3
    array-length v0, p1

    if-ge v2, v0, :cond_3

    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public writeQNameMap([Lorg/apache/xmlbeans/SchemaComponent;)V
    .locals 2

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeQNameSet(Lorg/apache/xmlbeans/QNameSet;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/QNameSet;->excludedURIs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/QNameSet;->excludedURIs()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/QNameSet;->includedURIs()Ljava/util/Set;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/QNameSet;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lorg/apache/xmlbeans/QNameSet;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/QNameSet;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object p1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/QNameSet;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_6

    :cond_6
    return-void
.end method

.method public writeRealHeader(Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, ".xsb"

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$000(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->getSaverStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_output:Ljava/io/DataOutputStream;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const p1, -0x25854542

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeInt(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_stringPool:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_output:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;->writeTo(Ljava/io/DataOutputStream;)V

    return-void

    :cond_1
    new-instance p2, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not write compiled schema resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {p2, v0, v1, p1, v2}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p2
.end method

.method public writeSOAPArrayType(Lorg/apache/xmlbeans/soap/SOAPArrayType;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/soap/SOAPArrayType;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/soap/SOAPArrayType;->soap11DimensionString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeShort(I)V
    .locals 4

    const v0, 0xffff

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_output:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " out of range: must fit in a 16-bit unsigned short."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_handle:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->_stringPool:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;->codeForString(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    return-void
.end method

.method public writeType(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V

    return-void
.end method

.method public writeTypeArray([Lorg/apache/xmlbeans/SchemaType;)V
    .locals 2

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeTypeData(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 9

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDerivationType()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaAnnotated;->getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->isAttribute()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v6

    check-cast v6, Lorg/apache/xmlbeans/SchemaLocalAttribute;

    invoke-virtual {v1, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getIndexForLocalAttribute(Lorg/apache/xmlbeans/SchemaLocalAttribute;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v6

    check-cast v6, Lorg/apache/xmlbeans/SchemaLocalElement;

    invoke-virtual {v1, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getIndexForLocalElement(Lorg/apache/xmlbeans/SchemaLocalElement;)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaComponent;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeHandle(Lorg/apache/xmlbeans/SchemaComponent;)V

    :goto_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaImplName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeTypeArray([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousUnionMemberOrdinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v6

    if-eqz v6, :cond_4

    or-int/lit8 v1, v1, 0x2

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v6

    if-eqz v6, :cond_5

    const/high16 v6, 0x80000

    or-int/2addr v1, v6

    :cond_5
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->ordered()I

    move-result v6

    if-eqz v6, :cond_6

    or-int/lit8 v1, v1, 0x4

    :cond_6
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->ordered()I

    move-result v6

    if-ne v6, v3, :cond_7

    or-int/lit16 v1, v1, 0x400

    :cond_7
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isBounded()Z

    move-result v6

    if-eqz v6, :cond_8

    or-int/lit8 v1, v1, 0x8

    :cond_8
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isFinite()Z

    move-result v6

    if-eqz v6, :cond_9

    or-int/lit8 v1, v1, 0x10

    :cond_9
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isNumeric()Z

    move-result v6

    if-eqz v6, :cond_a

    or-int/lit8 v1, v1, 0x20

    :cond_a
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->hasStringEnumValues()Z

    move-result v6

    if-eqz v6, :cond_b

    or-int/lit8 v1, v1, 0x40

    :cond_b
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isUnionOfLists()Z

    move-result v6

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x80

    :cond_c
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->hasPatternFacet()Z

    move-result v6

    if-eqz v6, :cond_d

    or-int/lit16 v1, v1, 0x100

    :cond_d
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isOrderSensitive()Z

    move-result v6

    if-eqz v6, :cond_e

    or-int/lit16 v1, v1, 0x200

    :cond_e
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->blockExtension()Z

    move-result v6

    if-eqz v6, :cond_f

    or-int/lit16 v1, v1, 0x1000

    :cond_f
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->blockRestriction()Z

    move-result v6

    if-eqz v6, :cond_10

    or-int/lit16 v1, v1, 0x2000

    :cond_10
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->finalExtension()Z

    move-result v6

    if-eqz v6, :cond_11

    or-int/lit16 v1, v1, 0x4000

    :cond_11
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->finalRestriction()Z

    move-result v6

    if-eqz v6, :cond_12

    or-int/lit16 v1, v1, 0x4000

    :cond_12
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->finalList()Z

    move-result v6

    if-eqz v6, :cond_13

    const/high16 v6, 0x20000

    or-int/2addr v1, v6

    :cond_13
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->finalUnion()Z

    move-result v6

    if-eqz v6, :cond_14

    const/high16 v6, 0x10000

    or-int/2addr v1, v6

    :cond_14
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAbstract()Z

    move-result v6

    if-eqz v6, :cond_15

    const/high16 v6, 0x40000

    or-int/2addr v1, v6

    :cond_15
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeInt(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttributes()[Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object v6

    array-length v7, v6

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    move v7, v5

    :goto_3
    array-length v8, v6

    if-ge v7, v8, :cond_16

    aget-object v8, v6, v7

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAttributeData(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_16
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQNameSet(Lorg/apache/xmlbeans/QNameSet;)V

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getWildcardProcess()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v1

    array-length v6, v1

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    move v6, v5

    :goto_4
    array-length v7, v1

    if-ge v6, v7, :cond_17

    aget-object v7, v1, v6

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writePropertyData(Lorg/apache/xmlbeans/SchemaProperty;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_17
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v1

    if-eq v1, v2, :cond_18

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_1a

    :cond_18
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->hasAllContent()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    if-eqz v1, :cond_19

    new-array v1, v4, [Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v6

    aput-object v6, v1, v5

    goto :goto_5

    :cond_19
    new-array v1, v5, [Lorg/apache/xmlbeans/SchemaParticle;

    :goto_5
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeParticleArray([Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v1

    array-length v6, v1

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    move v6, v5

    :goto_6
    array-length v7, v1

    if-ge v6, v7, :cond_1a

    aget-object v7, v1, v6

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writePropertyData(Lorg/apache/xmlbeans/SchemaProperty;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_1a
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v1

    if-ne v1, v3, :cond_27

    :cond_1b
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    move v1, v5

    move v6, v1

    :goto_7
    const/16 v7, 0xb

    if-gt v1, v7, :cond_1d

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v7

    if-eqz v7, :cond_1c

    add-int/lit8 v6, v6, 0x1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    move v1, v5

    :goto_8
    if-gt v1, v7, :cond_1f

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeXmlValueObject(Lorg/apache/xmlbeans/XmlAnySimpleType;)V

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaType;->isFacetFixed(I)Z

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getWhiteSpaceRule()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPatternExpressions()[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    move v1, v5

    :goto_9
    array-length v6, v0

    if-ge v1, v6, :cond_20

    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    goto :goto_b

    :cond_21
    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    move v1, v5

    :goto_a
    array-length v6, v0

    if-ge v1, v6, :cond_22

    aget-object v6, v0, v1

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeXmlValueObject(Lorg/apache/xmlbeans/XmlAnySimpleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_22
    :goto_b
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->hasStringEnumValues()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getStringEnumEntries()[Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    :goto_c
    array-length v1, v0

    if-ge v5, v1, :cond_23

    aget-object v1, v0, v5

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    aget-object v1, v0, v5

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getIntValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    aget-object v1, v0, v5

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_23
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    if-eq v0, v4, :cond_26

    if-eq v0, v3, :cond_25

    if-eq v0, v2, :cond_24

    goto :goto_d

    :cond_24
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getListItemType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    goto :goto_d

    :cond_25
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionMemberTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeTypeArray([Lorg/apache/xmlbeans/SchemaType;)V

    goto :goto_d

    :cond_26
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeInt(I)V

    :cond_27
    :goto_d
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeXmlValueObject(Lorg/apache/xmlbeans/XmlAnySimpleType;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeType(Lorg/apache/xmlbeans/SchemaType;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    goto :goto_3

    :cond_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->xgetListValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeXmlValueObject(Lorg/apache/xmlbeans/XmlAnySimpleType;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeShort(I)V

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getDoubleValue()D

    move-result-wide v0

    goto :goto_2

    :pswitch_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getFloatValue()F

    move-result p1

    float-to-double v0, p1

    :goto_2
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeDouble(D)V

    goto :goto_3

    :pswitch_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_3

    :pswitch_3
    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getByteArrayValue()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeByteArray([B)V

    goto :goto_3

    :pswitch_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
