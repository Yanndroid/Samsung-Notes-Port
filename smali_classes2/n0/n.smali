.class public Ln0/n;
.super Ln0/a;
.source "SourceFile"


# instance fields
.field public Q:I

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Z


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Ln0/a;-><init>(ILk0/b;)V

    const/4 p1, -0x1

    iput p1, p0, Ln0/n;->Q:I

    return-void
.end method

.method private c(Lq0/a;I)I
    .locals 6

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v2

    add-int/lit8 v1, v1, 0x2

    const/4 v3, -0x1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyOwnBinary() - Invalid data type ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WCon_ObjectVoice"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    invoke-virtual {p1, v4}, Lq0/a;->b(I)B

    move-result v5

    add-int/2addr v4, v1

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v4}, Lq0/a;->b(I)B

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v1

    const/4 v4, 0x1

    and-int/2addr v5, v4

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    iput-boolean v4, p0, Ln0/n;->T:Z

    if-eqz v2, :cond_2

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2, v1}, Ln0/n;->d(Lq0/a;II)Z

    move-result p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method private d(Lq0/a;II)Z
    .locals 2

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/n;->Q:I

    add-int/lit8 p2, p2, 0x4

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v0

    add-int/lit8 p2, p2, 0x2

    if-lez v0, :cond_1

    invoke-virtual {p1, p2, v0}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ln0/n;->R:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result p3

    add-int/lit8 p2, p2, 0x2

    if-lez p3, :cond_2

    invoke-virtual {p1, p2, p3}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/n;->S:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private n(Lq0/a;I)Z
    .locals 6

    add-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, 0x9

    iget-boolean v1, p0, Ln0/n;->T:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sub-int v4, v0, p2

    new-instance v5, Lq0/c;

    invoke-direct {v5, p1, v0, v2}, Lq0/c;-><init>(Lq0/a;II)V

    invoke-virtual {p0, v5}, Ln0/n;->G(Lq0/c;)V

    iget v0, v5, Lq0/c;->b:I

    iget v5, v5, Lq0/c;->c:I

    sub-int/2addr v0, p2

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Lq0/a;->r(II)V

    const/4 v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2, v2}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, p2, v3}, Lq0/a;->q(II)V

    add-int/lit8 p2, v2, 0x1

    invoke-virtual {p1, v2, v1}, Lq0/a;->q(II)V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2, v0}, Lq0/a;->q(II)V

    invoke-virtual {p1, v1, v5}, Lq0/a;->r(II)V

    return v3
.end method

.method private o()I
    .locals 2

    iget v0, p0, Ln0/n;->Q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    iget-object v1, p0, Ln0/n;->R:Ljava/lang/String;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Ln0/n;->S:Ljava/lang/String;

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public A(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "object"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p1, v3}, Ln0/n;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_1
    invoke-static {p1, v1}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseXml - invalid eventType = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WCon_ObjectVoice"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ln0/n;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public final G(Lq0/c;)V
    .locals 4

    iget v0, p0, Ln0/n;->Q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->u(II)V

    iget v0, p1, Lq0/c;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lq0/c;->c:I

    :cond_0
    iget-object v0, p0, Ln0/n;->R:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->r(II)V

    iget v1, p1, Lq0/c;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p1, Lq0/c;->b:I

    iget-object v2, p1, Lq0/c;->a:Lq0/a;

    iget-object v3, p0, Ln0/n;->R:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lq0/a;->D(ILjava/lang/String;)V

    iget v1, p1, Lq0/c;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lq0/c;->c:I

    :cond_1
    iget-object v0, p0, Ln0/n;->S:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lq0/c;->a:Lq0/a;

    iget v2, p1, Lq0/c;->b:I

    invoke-virtual {v1, v2, v0}, Lq0/a;->r(II)V

    iget v1, p1, Lq0/c;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p1, Lq0/c;->b:I

    iget-object v2, p1, Lq0/c;->a:Lq0/a;

    iget-object v3, p0, Ln0/n;->S:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lq0/a;->D(ILjava/lang/String;)V

    iget v1, p1, Lq0/c;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Lq0/c;->b:I

    iget v0, p1, Lq0/c;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lq0/c;->c:I

    :cond_2
    return-void
.end method

.method public IsSame(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ln0/n;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Ln0/n;

    invoke-super {p0, p1}, Ln0/a;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_ObjectVoice"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget p1, p0, Ln0/n;->Q:I

    iget v4, v1, Ln0/n;->Q:I

    const-string v5, "]"

    const-string v6, " - "

    if-eq p1, v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mAttachFileId["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ln0/n;->Q:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ln0/n;->Q:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ln0/n;->R:Ljava/lang/String;

    iget-object v4, v1, Ln0/n;->R:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mTitle["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/n;->R:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/n;->R:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Ln0/n;->S:Ljava/lang/String;

    iget-object v4, v1, Ln0/n;->S:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mPlayTime["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/n;->S:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/n;->S:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-boolean p1, p0, Ln0/n;->T:Z

    iget-boolean v4, v1, Ln0/n;->T:Z

    if-eq p1, v4, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mIsRecorded["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ln0/n;->T:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Ln0/n;->T:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    return v0
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/n;->f(Le1/o;)V

    invoke-virtual {p0, p1}, Ln0/n;->g(Le1/o;)V

    return-void
.end method

.method public f(Le1/o;)V
    .locals 2

    invoke-super {p0, p1}, Ln0/a;->f(Le1/o;)V

    iget v0, p0, Ln0/n;->Q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v1, v0}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attachFile"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ln0/n;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ln0/n;->R:Ljava/lang/String;

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ln0/n;->S:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ln0/n;->S:Ljava/lang/String;

    const-string v1, "playtime"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Ln0/n;->T:Z

    const-string v1, "isRecorded"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public g(Le1/o;)V
    .locals 0

    invoke-super {p0, p1}, Ln0/a;->g(Le1/o;)V

    return-void
.end method

.method public v(Lq0/a;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ln0/a;->v(Lq0/a;II)I

    move-result p3

    const-string v0, "WCon_ObjectVoice"

    if-gez p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectBase newApplyBinary() fail. err = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_0
    add-int/2addr p2, p3

    invoke-direct {p0, p1, p2}, Ln0/n;->c(Lq0/a;I)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ObjectFormula newApplyBinary() fail to apply own binary. err = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    add-int/2addr p1, p3

    return p1
.end method

.method public w(Lq0/a;I)I
    .locals 3

    invoke-super {p0, p1, p2}, Ln0/a;->w(Lq0/a;I)I

    move-result v0

    const-string v1, "WCon_ObjectVoice"

    if-gez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectBase newGetBinary() fail. err = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-super {p0}, Ln0/a;->x()I

    move-result v2

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2}, Ln0/n;->n(Lq0/a;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ObjectFormula newGetBinary() fail to get own binary. err"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_1
    return v0
.end method

.method public x()I
    .locals 2

    invoke-super {p0}, Ln0/a;->x()I

    move-result v0

    invoke-direct {p0}, Ln0/n;->o()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attachFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {p2, p1}, Lk0/a;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/n;->Q:I

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/n;->R:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "playtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/n;->S:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "isRecorded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/n;->T:Z

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Ln0/a;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-super {p0, p1}, Ln0/a;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method
