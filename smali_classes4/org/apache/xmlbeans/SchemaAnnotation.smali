.class public interface abstract Lorg/apache/xmlbeans/SchemaAnnotation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;
    }
.end annotation


# virtual methods
.method public abstract getApplicationInformation()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getAttributes()[Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;
.end method

.method public abstract getUserInformation()[Lorg/apache/xmlbeans/XmlObject;
.end method
