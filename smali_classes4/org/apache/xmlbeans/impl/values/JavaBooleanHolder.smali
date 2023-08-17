.class public abstract Lorg/apache/xmlbeans/impl/values/JavaBooleanHolder;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"


# instance fields
.field private _value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    return-void
.end method

.method public static validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Z
    .locals 3

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "boolean"

    invoke-interface {p1, p0, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBooleanHolder;->_value:Z

    check-cast p1, Lorg/apache/xmlbeans/XmlBoolean;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlBoolean;->getBooleanValue()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/values/JavaBooleanHolder;->_value:Z

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    return-object p1
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBooleanHolder;->_value:Z

    check-cast p1, Lorg/apache/xmlbeans/XmlBoolean;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlBoolean;->getBooleanValue()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBooleanValue()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBooleanHolder;->_value:Z

    return v0
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_BOOLEAN:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object v0
.end method

.method public set_boolean(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/values/JavaBooleanHolder;->_value:Z

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBooleanHolder;->_value:Z

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/JavaBooleanHolder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/values/JavaBooleanHolder;->_value:Z

    return-void
.end method

.method public value_hash_code()I
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/values/JavaBooleanHolder;->_value:Z

    if-eqz v0, :cond_0

    const v0, 0x391073e2

    goto :goto_0

    :cond_0
    const v0, 0x28501167

    :goto_0
    return v0
.end method
