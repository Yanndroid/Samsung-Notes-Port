.class public Lo0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Lm0/b;


# instance fields
.field public a:F

.field public b:B

.field public c:B

.field public d:B

.field public e:B

.field public f:B

.field public g:B

.field public h:B

.field public i:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo0/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/g;

    iget v1, p0, Lo0/g;->a:F

    iget v3, p1, Lo0/g;->a:F

    cmpl-float v1, v1, v3

    const-string v3, "]"

    const-string v4, " - "

    const-string v5, "WCon_LineStyleEffect"

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - width["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/g;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/g;->a:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-byte v1, p0, Lo0/g;->b:B

    iget-byte v6, p1, Lo0/g;->b:B

    if-eq v1, v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - compoundType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lo0/g;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lo0/g;->b:B

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-byte v1, p0, Lo0/g;->c:B

    iget-byte v6, p1, Lo0/g;->c:B

    const-string v7, " !! equals() - NE - mFileId["

    if-eq v1, v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lo0/g;->c:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lo0/g;->c:B

    goto :goto_1

    :cond_4
    iget-byte v1, p0, Lo0/g;->d:B

    iget-byte v6, p1, Lo0/g;->d:B

    if-eq v1, v6, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - capType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lo0/g;->d:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lo0/g;->d:B

    goto :goto_1

    :cond_5
    iget-byte v1, p0, Lo0/g;->e:B

    iget-byte v6, p1, Lo0/g;->e:B

    if-eq v1, v6, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - joinType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lo0/g;->e:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lo0/g;->e:B

    goto :goto_1

    :cond_6
    iget-byte v1, p0, Lo0/g;->f:B

    iget-byte v6, p1, Lo0/g;->f:B

    if-eq v1, v6, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - beginArrowType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lo0/g;->f:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lo0/g;->f:B

    goto :goto_1

    :cond_7
    iget-byte v1, p0, Lo0/g;->g:B

    iget-byte v6, p1, Lo0/g;->g:B

    if-eq v1, v6, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lo0/g;->g:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lo0/g;->g:B

    goto/16 :goto_1

    :cond_8
    iget-byte v1, p0, Lo0/g;->h:B

    iget-byte v6, p1, Lo0/g;->h:B

    if-eq v1, v6, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - endArrowType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lo0/g;->h:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lo0/g;->h:B

    goto/16 :goto_1

    :cond_9
    iget-byte v1, p0, Lo0/g;->i:B

    iget-byte v6, p1, Lo0/g;->i:B

    if-eq v1, v6, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - endArrowSize["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lo0/g;->i:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lo0/g;->i:B

    goto/16 :goto_1

    :cond_a
    return v0
.end method

.method public a(Lq0/a;I)I
    .locals 2

    invoke-virtual {p1, p2}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Lo0/g;->a:F

    add-int/lit8 v0, p2, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lq0/a;->b(I)B

    move-result v0

    iput-byte v0, p0, Lo0/g;->b:B

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    iput-byte v1, p0, Lo0/g;->c:B

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lq0/a;->b(I)B

    move-result v0

    iput-byte v0, p0, Lo0/g;->d:B

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    iput-byte v1, p0, Lo0/g;->e:B

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lq0/a;->b(I)B

    move-result v0

    iput-byte v0, p0, Lo0/g;->f:B

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    iput-byte v1, p0, Lo0/g;->g:B

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lq0/a;->b(I)B

    move-result v0

    iput-byte v0, p0, Lo0/g;->h:B

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result p1

    iput-byte p1, p0, Lo0/g;->i:B

    sub-int/2addr v0, p2

    return v0
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo0/g;->c(Le1/o;)V

    return-void
.end method

.method public c(Le1/o;)V
    .locals 2

    iget v0, p0, Lo0/g;->a:F

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    iget-byte v0, p0, Lo0/g;->b:B

    const-string v1, "compoundType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-byte v0, p0, Lo0/g;->c:B

    const-string v1, "dashType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-byte v0, p0, Lo0/g;->d:B

    const-string v1, "capType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-byte v0, p0, Lo0/g;->e:B

    const-string v1, "joinType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-byte v0, p0, Lo0/g;->f:B

    const-string v1, "beginArrowType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-byte v0, p0, Lo0/g;->g:B

    const-string v1, "beginArrowSize"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-byte v0, p0, Lo0/g;->h:B

    const-string v1, "endArrowType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-byte v0, p0, Lo0/g;->i:B

    const-string v1, "endArrowSize"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Lq0/a;I)I
    .locals 2

    iget v0, p0, Lo0/g;->a:F

    invoke-virtual {p1, p2, v0}, Lq0/a;->t(IF)V

    add-int/lit8 v0, p2, 0x4

    iget-byte v1, p0, Lo0/g;->b:B

    invoke-virtual {p1, v0, v1}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    iget-byte v1, p0, Lo0/g;->c:B

    invoke-virtual {p1, v0, v1}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    iget-byte v1, p0, Lo0/g;->d:B

    invoke-virtual {p1, v0, v1}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    iget-byte v1, p0, Lo0/g;->e:B

    invoke-virtual {p1, v0, v1}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    iget-byte v1, p0, Lo0/g;->f:B

    invoke-virtual {p1, v0, v1}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    iget-byte v1, p0, Lo0/g;->g:B

    invoke-virtual {p1, v0, v1}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    iget-byte v1, p0, Lo0/g;->h:B

    invoke-virtual {p1, v0, v1}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    iget-byte v1, p0, Lo0/g;->i:B

    invoke-virtual {p1, v0, v1}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, p2

    return v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public f(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lo0/g;->a:F

    goto/16 :goto_0

    :cond_0
    const-string v1, "compoundType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lo0/g;->b:B

    goto/16 :goto_0

    :cond_1
    const-string v1, "dashType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lo0/g;->c:B

    goto/16 :goto_0

    :cond_2
    const-string v1, "capType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lo0/g;->d:B

    goto :goto_0

    :cond_3
    const-string v1, "joinType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lo0/g;->e:B

    goto :goto_0

    :cond_4
    const-string v1, "beginArrowType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lo0/g;->f:B

    goto :goto_0

    :cond_5
    const-string v1, "beginArrowSize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lo0/g;->g:B

    goto :goto_0

    :cond_6
    const-string v1, "endArrowType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lo0/g;->h:B

    goto :goto_0

    :cond_7
    const-string v1, "endArrowSize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lo0/g;->i:B

    :cond_8
    :goto_0
    return-void
.end method

.method public g(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "lineStyleEffect"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lo0/g;->f(Lorg/xmlpull/v1/XmlPullParser;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
