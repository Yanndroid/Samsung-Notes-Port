.class public Lorg/apache/xmlbeans/impl/values/XmlListImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlAnySimpleType;


# static fields
.field private static final EMPTY_STRINGARRAY:[Ljava/lang/String;


# instance fields
.field private _jvalue:Lorg/apache/xmlbeans/XmlSimpleList;

.field private _schemaType:Lorg/apache/xmlbeans/SchemaType;

.field private _value:Lorg/apache/xmlbeans/XmlSimpleList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->EMPTY_STRINGARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method

.method private static compute_list_text(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->nullAsEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SimpleValue;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->nullAsEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static contains_white_space(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static equal_xmlLists(Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static lex(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Lorg/apache/xmlbeans/XmlSimpleList;
    .locals 8

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->split_list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Lorg/apache/xmlbeans/XmlAnySimpleType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    new-instance v3, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-direct {v3, p3}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/impl/common/PrefixResolver;)V

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    move v3, v2

    :goto_1
    :try_start_0
    array-length v4, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, v4, :cond_1

    :try_start_1
    aget-object v4, p0, v3

    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v4, "list"

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "item \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v7, p0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\' is not a valid value of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {p2, v4, v5}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/XmlSimpleList;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_3
    throw p0
.end method

.method private static nullAsEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static permits_inner_space(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 2

    check-cast p0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static split_list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->EMPTY_STRINGARRAY:[Ljava/lang/String;

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

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    sget-object p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->EMPTY_STRINGARRAY:[Ljava/lang/String;

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

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isSpace(I)Z

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

.method public static validateValue(Lorg/apache/xmlbeans/XmlSimpleList;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 9

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    move v5, v4

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    aget-object v6, v0, v5

    check-cast v6, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->xlistValue()Ljava/util/List;

    move-result-object v6

    invoke-static {p0, v6}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->equal_xmlLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v5, "list"

    aput-object v5, v0, v4

    aput-object p0, v0, v3

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const-string v5, "cvc-enumeration-valid"

    invoke-interface {p2, v5, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    const/4 v5, 0x4

    if-eqz v0, :cond_3

    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getIntValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result v6

    if-eq v0, v6, :cond_3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p0, v6, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v3

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "cvc-length-valid.2"

    invoke-interface {p2, v0, v6}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getIntValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result v6

    if-le v0, v6, :cond_4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p0, v6, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v3

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "cvc-minLength-valid.2"

    invoke-interface {p2, v0, v6}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getIntValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result p0

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v5, v3

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object p0, v5, v2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v1

    const-string p0, "cvc-maxLength-valid.2"

    invoke-interface {p2, p0, v5}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->compute_list_text(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->xlistValue()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->equal_xmlLists(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public getListValue()Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_jvalue:Lorg/apache/xmlbeans/XmlSimpleList;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/XmlSimpleList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->java_value(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/XmlSimpleList;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_jvalue:Lorg/apache/xmlbeans/XmlSimpleList;

    return-object v1
.end method

.method public is_defaultable_ws(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->set_text(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public set_list(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getListItemType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/impl/values/TypeStore;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/xmlbeans/XmlAnySimpleType;

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/apache/xmlbeans/XmlObject;

    if-eqz v5, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/XmlObject;

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->permits_inner_space(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->contains_white_space(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw p1

    :cond_2
    :goto_2
    invoke-interface {v0, v4}, Lorg/apache/xmlbeans/SchemaType;->newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/xmlbeans/XmlSimpleList;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->validateValue(Lorg/apache/xmlbeans/XmlSimpleList;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_5
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_jvalue:Lorg/apache/xmlbeans/XmlSimpleList;

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_6

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_6
    throw p1
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->matchPatternFacet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "list"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getListItemType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-static {p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->lex(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Lorg/apache/xmlbeans/XmlSimpleList;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->validateValue(Lorg/apache/xmlbeans/XmlSimpleList;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_jvalue:Lorg/apache/xmlbeans/XmlSimpleList;

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->xlistValue()Ljava/util/List;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->validateValue(Lorg/apache/xmlbeans/XmlSimpleList;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    return-void
.end method

.method public value_hash_code()I
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x9

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    move v2, v3

    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    mul-int/lit8 v0, v0, 0x13

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/XmlSimpleList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlSimpleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    mul-int/lit8 v0, v0, 0x13

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/XmlSimpleList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public xgetListValue()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->_value:Lorg/apache/xmlbeans/XmlSimpleList;

    return-object v0
.end method
