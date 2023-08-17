.class public Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression;
.super Lorg/apache/xmlbeans/impl/regex/RegularExpression;
.source "SourceFile"


# static fields
.field public static final knownPatterns:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression;->buildKnownPatternMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression;->knownPatterns:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "X"

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static buildKnownPatternMap()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression$1;

    const-string v2, "\\c+"

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression$2;

    const-string v2, "\\i\\c*"

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression$3;

    const-string v2, "[\\i-[:]][\\c-[:]]*"

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression$3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static forPattern(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/RegularExpression;
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression;->knownPatterns:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    const-string v1, "X"

    invoke-direct {v0, p0, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
