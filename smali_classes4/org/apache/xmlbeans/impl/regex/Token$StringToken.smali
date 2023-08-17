.class Lorg/apache/xmlbeans/impl/regex/Token$StringToken;
.super Lorg/apache/xmlbeans/impl/regex/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToken"
.end annotation


# instance fields
.field public refNumber:I

.field public string:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Token$StringToken;->string:Ljava/lang/String;

    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/Token$StringToken;->refNumber:I

    return-void
.end method


# virtual methods
.method public getReferenceNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$StringToken;->refNumber:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$StringToken;->string:Ljava/lang/String;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$StringToken;->refNumber:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$StringToken;->string:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->quoteMeta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
