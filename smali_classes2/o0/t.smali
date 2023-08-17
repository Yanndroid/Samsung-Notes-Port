.class public Lo0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/b;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo0/t;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/t;

    iget-object v1, p0, Lo0/t;->a:Ljava/lang/String;

    iget-object v3, p1, Lo0/t;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mUuid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/t;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WCon_ObjectUuid"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v0
.end method

.method public a(Lq0/a;I)I
    .locals 9

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v0

    add-int/lit8 v1, p2, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-lez v0, :cond_7

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-nez v1, :cond_0

    move v1, v3

    goto/16 :goto_3

    :cond_0
    and-int/lit16 v4, v1, 0x80

    if-nez v4, :cond_1

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3}, Lq0/a;->b(I)B

    move-result v3

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v5, v1, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_2

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v1, v3

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4}, Lq0/a;->b(I)B

    move-result v4

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v6, v1, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_3

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    and-int/lit8 v3, v4, 0x3f

    or-int/2addr v1, v3

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v5}, Lq0/a;->b(I)B

    move-result v5

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v7, v1, 0xf8

    const/16 v8, 0xf0

    if-ne v7, v8, :cond_4

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x12

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    and-int/lit8 v3, v4, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    and-int/lit8 v3, v5, 0x3f

    or-int/2addr v1, v3

    const v3, 0xd800

    const v4, 0xfc00

    and-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0xa

    or-int/2addr v3, v4

    const v4, 0xdc00

    and-int/lit16 v1, v1, 0x3ff

    or-int/2addr v1, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v6

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {p1, v6}, Lq0/a;->b(I)B

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v4, v1, 0xfc

    const/16 v5, 0x25a1

    const/16 v6, 0xf8

    if-ne v4, v6, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3}, Lq0/a;->b(I)B

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v1, v1, 0xfe

    const/16 v3, 0xfc

    if-ne v1, v3, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    move v1, v4

    :cond_7
    :goto_3
    if-lez v0, :cond_8

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo0/t;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x24

    if-le p1, v0, :cond_9

    iget-object p1, p0, Lo0/t;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo0/t;->a:Ljava/lang/String;

    :cond_9
    sub-int/2addr v1, p2

    return v1
.end method

.method public b(Lq0/a;I)I
    .locals 11

    iget-object v0, p0, Lo0/t;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x24

    invoke-virtual {p1, p2, v0}, Lq0/a;->r(II)V

    add-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lo0/t;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_3

    aget-char v7, v2, v5

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    const/16 v8, 0x7f

    if-gt v7, v8, :cond_1

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v1, v7}, Lq0/a;->q(II)V

    add-int/lit8 v6, v6, 0x1

    :goto_1
    move v1, v8

    goto :goto_2

    :cond_1
    const/16 v8, 0x7ff

    if-gt v7, v8, :cond_2

    and-int/lit16 v8, v7, 0x7c0

    shr-int/lit8 v8, v8, 0x6

    or-int/lit16 v8, v8, 0xc0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p1, v1, v8}, Lq0/a;->q(II)V

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {p1, v9, v7}, Lq0/a;->q(II)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_2
    const v8, 0xf000

    and-int/2addr v8, v7

    shr-int/lit8 v8, v8, 0xc

    or-int/lit16 v8, v8, 0xe0

    and-int/lit16 v9, v7, 0xfc0

    shr-int/lit8 v9, v9, 0x6

    or-int/lit16 v9, v9, 0x80

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p1, v1, v8}, Lq0/a;->q(II)V

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {p1, v10, v9}, Lq0/a;->q(II)V

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v1, v7}, Lq0/a;->q(II)V

    add-int/lit8 v6, v6, 0x3

    goto :goto_1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v6, v0, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v4}, Lq0/a;->q(II)V

    add-int/lit8 v6, v6, 0x1

    move v1, v2

    goto :goto_3

    :cond_4
    sub-int/2addr v1, p2

    return v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "object uuid is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo0/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/io/RandomAccessFile;)V
    .locals 2

    invoke-static {p1}, Lq0/b;->m(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo0/t;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x24

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lo0/t;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo0/t;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo0/t;->a:Ljava/lang/String;

    return-void
.end method
