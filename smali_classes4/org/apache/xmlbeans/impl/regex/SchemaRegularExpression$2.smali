.class final Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression$2;
.super Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression;-><init>(Ljava/lang/String;Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression$1;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
