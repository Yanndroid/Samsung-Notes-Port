.class public abstract Lorg/apache/xmlbeans/impl/values/JavaNotationHolder;
.super Lorg/apache/xmlbeans/impl/values/XmlQNameImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlQNameImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NOTATION:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object v0
.end method
