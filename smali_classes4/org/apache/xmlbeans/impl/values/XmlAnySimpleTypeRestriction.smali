.class public Lorg/apache/xmlbeans/impl/values/XmlAnySimpleTypeRestriction;
.super Lorg/apache/xmlbeans/impl/values/XmlAnySimpleTypeImpl;
.source "SourceFile"


# instance fields
.field private _schemaType:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlAnySimpleTypeImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlAnySimpleTypeRestriction;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method


# virtual methods
.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlAnySimpleTypeRestriction;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method
