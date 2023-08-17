.class public Ln0/m;
.super Ln0/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ln0/i;-><init>(ILk0/b;)V

    return-void
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

    invoke-virtual {p0, p1, v3}, Ln0/m;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

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
    invoke-virtual {p0}, Ln0/i;->K()V

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

    const-string v4, "WCon_ObjectTextBox"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ln0/m;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/m;->f(Le1/o;)V

    invoke-virtual {p0, p1}, Ln0/m;->g(Le1/o;)V

    return-void
.end method

.method public f(Le1/o;)V
    .locals 2

    invoke-super {p0, p1}, Ln0/i;->f(Le1/o;)V

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    iget v0, v0, Lo0/h;->h:I

    if-eqz v0, :cond_0

    const-string v1, "borderColor"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    iget v0, v0, Lo0/h;->i:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const-string v1, "borderWidth"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    :cond_1
    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    iget v0, v0, Lo0/h;->j:I

    if-eqz v0, :cond_2

    const-string v1, "borderType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public g(Le1/o;)V
    .locals 0

    invoke-super {p0, p1}, Ln0/i;->g(Le1/o;)V

    return-void
.end method

.method public v(Lq0/a;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ln0/i;->v(Lq0/a;II)I

    move-result p3

    const-string v0, "WCon_ObjectTextBox"

    if-gez p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectText::NewApplyBinary() fail. baseSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_0
    add-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Ln0/i;->V(Lq0/a;I)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ObjectText::NewApplyBinary() fail to apply own binary. "

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

    invoke-super {p0, p1, p2}, Ln0/i;->w(Lq0/a;I)I

    move-result v0

    const-string v1, "WCon_ObjectTextBox"

    if-gez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectText newGetBinary() fail. err = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-super {p0}, Ln0/i;->x()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p0, p1, p2}, Ln0/i;->W(Lq0/a;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ObjectText newGetBinary() fail to get own binary. err"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_1
    return v0
.end method

.method public x()I
    .locals 2

    invoke-super {p0}, Ln0/i;->x()I

    move-result v0

    invoke-virtual {p0}, Ln0/i;->X()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "borderColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, v0, Lo0/h;->h:I

    goto :goto_0

    :cond_0
    const-string v1, "borderWidth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lo0/h;->i:F

    goto :goto_0

    :cond_1
    const-string v1, "borderType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lo0/h;->j:I

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Ln0/i;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-super {p0, p1}, Ln0/i;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method
