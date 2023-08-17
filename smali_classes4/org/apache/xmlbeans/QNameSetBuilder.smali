.class public Lorg/apache/xmlbeans/QNameSetBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/QNameSetSpecification;
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_STRINGARRAY:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _excludedQNames:Ljava/util/Set;

.field private _includedQNames:Ljava/util/Set;

.field private _includedURIs:Ljava/util/Set;

.field private _inverted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/xmlbeans/QNameSetBuilder;->EMPTY_STRINGARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    const-string v0, "##any"

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->splitList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_7

    aget-object v2, p1, v1

    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_6

    const-string v3, "##other"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    new-instance v2, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v2}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    invoke-virtual {v2, p2}, Lorg/apache/xmlbeans/QNameSetBuilder;->addNamespace(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/QNameSetBuilder;->addNamespace(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->invert()V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->clear()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->invert()V

    goto :goto_2

    :cond_3
    aget-object v3, p1, v1

    const-string v5, "##targetNamespace"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p2, :cond_4

    move-object v2, p2

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_5
    aget-object v3, p1, v1

    const-string v5, "##local"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v2, v4

    :cond_6
    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->addNamespace(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of excludedURIs and includedURIs must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    return-void
.end method

.method private addAllImpl(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    iget-object v3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v4}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_2

    invoke-interface {p4, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {p4}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v2, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    iget-object p2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    iget-object p3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllMatchingFirstOnly(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    iget-object p2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_8
    iget-object p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    iget-object p3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-static {p2, p1, p3}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllMatchingNeither(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_a
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object p3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    iget-object p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    iget-object p2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    iput-object p2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    iput-object p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    iget-boolean p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    :goto_7
    return-void
.end method

.method private addImpl(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-static {p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private addNamespaceImpl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllMatchingNs(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllMatchingNs(Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private isDisjointImpl(Lorg/apache/xmlbeans/QNameSetSpecification;Lorg/apache/xmlbeans/QNameSetSpecification;)Z
    .locals 5

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_1
    invoke-interface {p2}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {p2, v3}, Lorg/apache/xmlbeans/QNameSetSpecification;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {p2}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/QNameSetSpecification;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method private static isSpace(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private prettyQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeAllImpl(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v3}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_3

    invoke-interface {p4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_3
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {p4}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    iget-object p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    iget-object p3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllMatchingFirstOnly(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_6

    :cond_9
    iget-object p2, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    iget-object p3, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-static {p2, p1, p3}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllMatchingBoth(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    :goto_6
    iget-object p1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_b
    return-void
.end method

.method private static removeAllMatchingBoth(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static removeAllMatchingFirstOnly(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static removeAllMatchingNeither(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static removeAllMatchingNs(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeImpl(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-static {p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private removeNamespaceImpl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllMatchingNs(Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllMatchingNs(Ljava/lang/String;Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method private static splitList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/QNameSetBuilder;->EMPTY_STRINGARRAY:[Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->isSpace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    sget-object p0, Lorg/apache/xmlbeans/QNameSetBuilder;->EMPTY_STRINGARRAY:[Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/QNameSetBuilder;->isSpace(C)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addImpl(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeImpl(Lorg/apache/poi/javax/xml/namespace/QName;)V

    :goto_0
    return-void
.end method

.method public addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllImpl(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAllImpl(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method public addNamespace(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addNamespaceImpl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeNamespaceImpl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-static {p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method public containsAll(Lorg/apache/xmlbeans/QNameSetSpecification;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->inverse()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSet;->isDisjoint(Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result p1

    return p1
.end method

.method public excludedQNamesInIncludedURIs()Ljava/util/Set;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public excludedURIs()Ljava/util/Set;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public includedQNamesInExcludedURIs()Ljava/util/Set;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public includedURIs()Ljava/util/Set;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public intersect(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->restrict(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lorg/apache/xmlbeans/QNameSet;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->includedURIs()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->excludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/apache/xmlbeans/QNameSet;->forSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    return-object v0
.end method

.method public invert()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    return-void
.end method

.method public isAll()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisjoint(Lorg/apache/xmlbeans/QNameSetSpecification;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->isDisjointImpl(Lorg/apache/xmlbeans/QNameSetSpecification;Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->isDisjointImpl(Lorg/apache/xmlbeans/QNameSetSpecification;Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addImpl(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeImpl(Lorg/apache/poi/javax/xml/namespace/QName;)V

    :goto_0
    return-void
.end method

.method public removeAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAllImpl(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllImpl(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method public removeNamespace(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addNamespaceImpl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeNamespaceImpl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public restrict(Lorg/apache/xmlbeans/QNameSetSpecification;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAllImpl(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAllImpl(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method public toQNameSet()Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/QNameSet;->forSpecification(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "QNameSetBuilder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_inverted:Z

    if-eqz v1, :cond_0

    const-string v1, "-("

    goto :goto_0

    :cond_0
    const-string v1, "+("

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedURIs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_1

    const-string v2, "+*@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->prettyQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/QNameSetBuilder;->_includedQNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->prettyQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p1

    return-object p1
.end method
