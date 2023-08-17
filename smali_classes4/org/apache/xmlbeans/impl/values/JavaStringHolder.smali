.class public Lorg/apache/xmlbeans/impl/values/JavaStringHolder;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    return-void
.end method


# virtual methods
.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaStringHolder;->_value:Ljava/lang/String;

    return-object p1
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaStringHolder;->_value:Ljava/lang/String;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get_wscanon_rule()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public is_defaultable_ws(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_STRING:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object v0
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaStringHolder;->_value:Ljava/lang/String;

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaStringHolder;->_value:Ljava/lang/String;

    return-void
.end method

.method public value_hash_code()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaStringHolder;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
