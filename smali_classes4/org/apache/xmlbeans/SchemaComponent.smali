.class public interface abstract Lorg/apache/xmlbeans/SchemaComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/SchemaComponent$Ref;
    }
.end annotation


# static fields
.field public static final ANNOTATION:I = 0x8

.field public static final ATTRIBUTE:I = 0x3

.field public static final ATTRIBUTE_GROUP:I = 0x4

.field public static final ELEMENT:I = 0x1

.field public static final IDENTITY_CONSTRAINT:I = 0x5

.field public static final MODEL_GROUP:I = 0x6

.field public static final NOTATION:I = 0x7

.field public static final TYPE:I


# virtual methods
.method public abstract getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;
.end method

.method public abstract getComponentType()I
.end method

.method public abstract getName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getSourceName()Ljava/lang/String;
.end method

.method public abstract getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
.end method
