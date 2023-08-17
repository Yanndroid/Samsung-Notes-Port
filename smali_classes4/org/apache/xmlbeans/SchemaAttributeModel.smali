.class public interface abstract Lorg/apache/xmlbeans/SchemaAttributeModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LAX:I = 0x2

.field public static final NONE:I = 0x0

.field public static final SKIP:I = 0x3

.field public static final STRICT:I = 0x1


# virtual methods
.method public abstract getAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaLocalAttribute;
.end method

.method public abstract getAttributes()[Lorg/apache/xmlbeans/SchemaLocalAttribute;
.end method

.method public abstract getWildcardProcess()I
.end method

.method public abstract getWildcardSet()Lorg/apache/xmlbeans/QNameSet;
.end method
