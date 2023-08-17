.class public interface abstract Lorg/apache/xmlbeans/QNameSetSpecification;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z
.end method

.method public abstract containsAll(Lorg/apache/xmlbeans/QNameSetSpecification;)Z
.end method

.method public abstract excludedQNamesInIncludedURIs()Ljava/util/Set;
.end method

.method public abstract excludedURIs()Ljava/util/Set;
.end method

.method public abstract includedQNamesInExcludedURIs()Ljava/util/Set;
.end method

.method public abstract includedURIs()Ljava/util/Set;
.end method

.method public abstract intersect(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;
.end method

.method public abstract inverse()Lorg/apache/xmlbeans/QNameSet;
.end method

.method public abstract isAll()Z
.end method

.method public abstract isDisjoint(Lorg/apache/xmlbeans/QNameSetSpecification;)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract union(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;
.end method
