.class public final Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Table"
.end annotation


# instance fields
.field private _list:Ljava/util/List;

.field private _map:Ljava/util/Map;


# direct methods
.method public constructor <init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->_map:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->_list:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->_map:Ljava/util/Map;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    iget-object v2, p0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->_list:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->_list:Ljava/util/List;

    aget-object v3, p1, v0

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/StringEnumAbstractBase;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/StringEnumAbstractBase;

    return-object p1
.end method

.method public lastInt()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
