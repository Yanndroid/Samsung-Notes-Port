.class Lorg/apache/xmlbeans/impl/regex/Token$CharToken;
.super Lorg/apache/xmlbeans/impl/regex/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharToken"
.end annotation


# instance fields
.field public chardata:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    return-void
.end method


# virtual methods
.method public getChar()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    return v0
.end method

.method public match(I)Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "NFAArrow#match(): Internal error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const-string v0, ""

    const-string v1, "\\"

    if-eqz p1, :cond_3

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_4

    :cond_0
    sget-object p1, Lorg/apache/xmlbeans/impl/regex/Token;->token_linebeginning:Lorg/apache/xmlbeans/impl/regex/Token;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/xmlbeans/impl/regex/Token;->token_lineend:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    goto/16 :goto_2

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :cond_3
    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    const/16 v2, 0x9

    if-eq p1, v2, :cond_a

    const/16 v2, 0xa

    if-eq p1, v2, :cond_9

    const/16 v2, 0xc

    if-eq p1, v2, :cond_8

    const/16 v2, 0xd

    if-eq p1, v2, :cond_7

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_6

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_5

    const/16 v2, 0x3f

    if-eq p1, v2, :cond_5

    const/16 v2, 0x5b

    if-eq p1, v2, :cond_5

    const/16 v2, 0x5c

    if-eq p1, v2, :cond_5

    const/16 v2, 0x7b

    if-eq p1, v2, :cond_5

    const/16 v2, 0x7c

    if-eq p1, v2, :cond_5

    packed-switch p1, :pswitch_data_0

    const/high16 v1, 0x10000

    if-lt p1, v1, :cond_4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_1

    :cond_5
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    const-string p1, "\\e"

    goto :goto_4

    :cond_7
    const-string p1, "\\r"

    goto :goto_4

    :cond_8
    const-string p1, "\\f"

    goto :goto_4

    :cond_9
    const-string p1, "\\n"

    goto :goto_4

    :cond_a
    const-string p1, "\\t"

    :goto_4
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
