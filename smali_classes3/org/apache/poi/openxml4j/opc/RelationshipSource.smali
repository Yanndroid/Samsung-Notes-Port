.class public interface abstract Lorg/apache/poi/openxml4j/opc/RelationshipSource;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
.end method

.method public abstract addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
.end method

.method public abstract addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
.end method

.method public abstract addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
.end method

.method public abstract clearRelationships()V
.end method

.method public abstract getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
.end method

.method public abstract getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
.end method

.method public abstract getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
.end method

.method public abstract hasRelationships()Z
.end method

.method public abstract isRelationshipExists(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Z
.end method

.method public abstract removeRelationship(Ljava/lang/String;)V
.end method
