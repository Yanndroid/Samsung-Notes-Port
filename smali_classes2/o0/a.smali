.class public Lo0/a;
.super Lo0/c;
.source "SourceFile"


# instance fields
.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lo0/c;-><init>(I)V

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lo0/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/a;

    iget v1, p0, Lo0/c;->a:I

    iget v3, p1, Lo0/c;->a:I

    const-string v4, "]"

    const-string v5, " - "

    const-string v6, "WCon_FillBgEffect"

    if-eq v1, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/c;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget v1, p0, Lo0/a;->b:F

    iget v3, p1, Lo0/a;->b:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - transparency["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/a;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/a;->b:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    return v0
.end method

.method public a(Le1/o;)V
    .locals 2

    invoke-super {p0, p1}, Lo0/c;->a(Le1/o;)V

    iget v0, p0, Lo0/a;->b:F

    const-string/jumbo v1, "transparency"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo0/a;->a(Le1/o;)V

    invoke-virtual {p0, p1}, Lo0/a;->c(Le1/o;)V

    return-void
.end method

.method public c(Le1/o;)V
    .locals 0

    invoke-super {p0, p1}, Lo0/c;->c(Le1/o;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public g(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "transparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lo0/a;->b:F

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lo0/c;->g(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public h(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-super {p0, p1}, Lo0/c;->h(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public i(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "fillEffect"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p1, v3}, Lo0/a;->g(Lorg/xmlpull/v1/XmlPullParser;I)V

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

    const-string v4, "WCon_FillBgEffect"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lo0/a;->h(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public j(Lq0/a;I)I
    .locals 0

    invoke-virtual {p1, p2}, Lq0/a;->f(I)F

    move-result p1

    iput p1, p0, Lo0/a;->b:F

    add-int/lit8 p1, p2, 0x4

    sub-int/2addr p1, p2

    return p1
.end method

.method public k(Lq0/a;I)I
    .locals 1

    iget v0, p0, Lo0/a;->b:F

    invoke-virtual {p1, p2, v0}, Lq0/a;->t(IF)V

    add-int/lit8 p1, p2, 0x4

    sub-int/2addr p1, p2

    return p1
.end method
