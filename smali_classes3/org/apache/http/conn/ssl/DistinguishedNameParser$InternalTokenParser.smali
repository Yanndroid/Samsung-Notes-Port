.class Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;
.super Lorg/apache/http/conn/ssl/TokenParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/conn/ssl/DistinguishedNameParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalTokenParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/TokenParser;-><init>()V

    return-void
.end method


# virtual methods
.method public copyUnquotedContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 7

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    if-eqz v4, :cond_1

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v3

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_2
    invoke-static {v5}, Lorg/apache/http/conn/ssl/TokenParser;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    return-void
.end method
