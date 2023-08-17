.class public interface abstract Lorg/apache/xmlbeans/SchemaTypeSystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaTypeLoader;


# virtual methods
.method public abstract annotations()[Lorg/apache/xmlbeans/SchemaAnnotation;
.end method

.method public abstract attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
.end method

.method public abstract attributeTypes()[Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract documentTypes()[Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;
.end method

.method public abstract globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;
.end method

.method public abstract globalTypes()[Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
.end method

.method public abstract resolve()V
.end method

.method public abstract resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;
.end method

.method public abstract save(Lorg/apache/xmlbeans/Filer;)V
.end method

.method public abstract saveToDirectory(Ljava/io/File;)V
.end method

.method public abstract typeForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
.end method
