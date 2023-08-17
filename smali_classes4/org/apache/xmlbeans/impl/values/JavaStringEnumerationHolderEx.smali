.class public abstract Lorg/apache/xmlbeans/impl/values/JavaStringEnumerationHolderEx;
.super Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;
.source "SourceFile"


# instance fields
.field private _val:Lorg/apache/xmlbeans/StringEnumAbstractBase;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-void
.end method

.method public static validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    return-void
.end method


# virtual methods
.method public getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaStringEnumerationHolderEx;->_val:Lorg/apache/xmlbeans/StringEnumAbstractBase;

    return-object v0
.end method

.method public set_enum(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getEnumJavaClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->set_text(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaStringEnumerationHolderEx;->_val:Lorg/apache/xmlbeans/StringEnumAbstractBase;

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaStringEnumerationHolderEx;->_val:Lorg/apache/xmlbeans/StringEnumAbstractBase;

    invoke-super {p0}, Lorg/apache/xmlbeans/impl/values/JavaStringHolder;->set_nil()V

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->enumForString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->set_text(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaStringEnumerationHolderEx;->_val:Lorg/apache/xmlbeans/StringEnumAbstractBase;

    return-void

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "string"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "cvc-enumeration-valid"

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
