.class public interface abstract Lorg/apache/xmlbeans/SchemaGlobalElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaLocalElement;
.implements Lorg/apache/xmlbeans/SchemaComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;
    }
.end annotation


# virtual methods
.method public abstract finalExtension()Z
.end method

.method public abstract finalRestriction()Z
.end method

.method public abstract getRef()Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;
.end method

.method public abstract substitutionGroup()Lorg/apache/xmlbeans/SchemaGlobalElement;
.end method

.method public abstract substitutionGroupMembers()[Lorg/apache/poi/javax/xml/namespace/QName;
.end method
