.class public interface abstract Lorg/apache/xmlbeans/SchemaProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONSISTENTLY:I = 0x2

.field public static final JAVA_BIG_DECIMAL:I = 0x8

.field public static final JAVA_BIG_INTEGER:I = 0x9

.field public static final JAVA_BOOLEAN:I = 0x1

.field public static final JAVA_BYTE:I = 0x4

.field public static final JAVA_BYTE_ARRAY:I = 0xb

.field public static final JAVA_CALENDAR:I = 0x11

.field public static final JAVA_DATE:I = 0xe

.field public static final JAVA_DOUBLE:I = 0x3

.field public static final JAVA_ENUM:I = 0x12

.field public static final JAVA_FIRST_PRIMITIVE:I = 0x1

.field public static final JAVA_FLOAT:I = 0x2

.field public static final JAVA_GDATE:I = 0xc

.field public static final JAVA_GDURATION:I = 0xd

.field public static final JAVA_INT:I = 0x6

.field public static final JAVA_LAST_PRIMITIVE:I = 0x7

.field public static final JAVA_LIST:I = 0x10

.field public static final JAVA_LONG:I = 0x7

.field public static final JAVA_OBJECT:I = 0x13

.field public static final JAVA_QNAME:I = 0xf

.field public static final JAVA_SHORT:I = 0x5

.field public static final JAVA_STRING:I = 0xa

.field public static final JAVA_USER:I = 0x14

.field public static final NEVER:I = 0x0

.field public static final VARIABLE:I = 0x1

.field public static final XML_OBJECT:I


# virtual methods
.method public abstract acceptedNames()[Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract extendsJavaArray()Z
.end method

.method public abstract extendsJavaOption()Z
.end method

.method public abstract extendsJavaSingleton()Z
.end method

.method public abstract getContainerType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getDefaultText()Ljava/lang/String;
.end method

.method public abstract getDefaultValue()Lorg/apache/xmlbeans/XmlAnySimpleType;
.end method

.method public abstract getJavaPropertyName()Ljava/lang/String;
.end method

.method public abstract getJavaSetterDelimiter()Lorg/apache/xmlbeans/QNameSet;
.end method

.method public abstract getJavaTypeCode()I
.end method

.method public abstract getMaxOccurs()Ljava/math/BigInteger;
.end method

.method public abstract getMinOccurs()Ljava/math/BigInteger;
.end method

.method public abstract getName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract hasDefault()I
.end method

.method public abstract hasFixed()I
.end method

.method public abstract hasNillable()I
.end method

.method public abstract isAttribute()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;
.end method
