.class public final Lio/netty/util/internal/AppendableCharSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;


# instance fields
.field private chars:[C

.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "length"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    return-void
.end method

.method private constructor <init>([C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNonEmpty([CLjava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length p1, p1

    iput p1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    return-void
.end method

.method private static expand([CII)[C
    .locals 1

    array-length v0, p0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_1

    if-gt p1, v0, :cond_0

    new-array p1, v0, [C

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public append(C)Lio/netty/util/internal/AppendableCharSequence;
    .locals 4

    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, p3, :cond_3

    sub-int v0, p3, p2

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v2, v1

    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    add-int v2, v3, v0

    invoke-static {v1, v2, v3}, Lio/netty/util/internal/AppendableCharSequence;->expand([CII)[C

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    :cond_0
    instance-of v1, p1, Lio/netty/util/internal/AppendableCharSequence;

    if-eqz v1, :cond_1

    check-cast p1, Lio/netty/util/internal/AppendableCharSequence;

    iget-object p1, p1, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget-object p3, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-static {p1, p2, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    return-object p0

    :cond_1
    :goto_0
    if-ge p2, p3, :cond_2

    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: csq.length() >= ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "),but actual is ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    aget-char p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public charAtUnsafe(I)C
    .locals 1

    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    return-void
.end method

.method public setLength(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (length: >= 0, <= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subSequence(II)Lio/netty/util/internal/AppendableCharSequence;
    .locals 2

    if-ne p1, p2, :cond_0

    new-instance p1, Lio/netty/util/internal/AppendableCharSequence;

    const/16 p2, 0x10

    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p1, p2}, Lio/netty/util/internal/AppendableCharSequence;-><init>(I)V

    return-object p1

    :cond_0
    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    invoke-direct {v0, p1}, Lio/netty/util/internal/AppendableCharSequence;-><init>([C)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/AppendableCharSequence;->subSequence(II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public subStringUnsafe(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    sub-int/2addr p2, p1

    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expected: start and length <= ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
