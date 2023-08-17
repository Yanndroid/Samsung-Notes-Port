.class Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributeImpl"
.end annotation


# instance fields
.field private _name:Lorg/apache/poi/javax/xml/namespace/QName;

.field private _value:Ljava/lang/String;

.field private _valueUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_value:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_valueUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;->_valueUri:Ljava/lang/String;

    return-object v0
.end method
