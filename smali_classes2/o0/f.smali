.class public Lo0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Lm0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/f$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:B

.field public d:I

.field public e:Landroid/graphics/PointF;

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo0/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lo0/f;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo0/f;->e:Landroid/graphics/PointF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo0/f;->g:Ljava/util/ArrayList;

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
    instance-of v1, p1, Lo0/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/f;

    iget v1, p0, Lo0/f;->a:I

    iget v3, p1, Lo0/f;->a:I

    const-string v4, "]"

    const-string v5, " - "

    const-string v6, "WCon_LineColorEffect"

    if-eq v1, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mColorType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/f;->a:I

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget v1, p0, Lo0/f;->b:I

    iget v3, p1, Lo0/f;->b:I

    if-eq v1, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mSolidColor["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/f;->b:I

    goto :goto_0

    :cond_3
    iget-byte v1, p0, Lo0/f;->c:B

    iget-byte v3, p1, Lo0/f;->c:B

    if-eq v1, v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mGradientType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lo0/f;->c:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lo0/f;->c:B

    goto :goto_0

    :cond_4
    iget v1, p0, Lo0/f;->d:I

    iget v3, p1, Lo0/f;->d:I

    if-eq v1, v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mAngle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/f;->d:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lo0/f;->e:Landroid/graphics/PointF;

    iget-object v3, p1, Lo0/f;->e:Landroid/graphics/PointF;

    invoke-static {v1, v3}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mPosition["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/f;->e:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/f;->e:Landroid/graphics/PointF;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget-boolean v1, p0, Lo0/f;->f:Z

    iget-boolean v3, p1, Lo0/f;->f:Z

    if-eq v1, v3, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mIsRotatable["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo0/f;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lo0/f;->f:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lo0/f;->g:Ljava/util/ArrayList;

    iget-object v3, p1, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mColorList["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/f;->g:Ljava/util/ArrayList;

    goto :goto_2

    :cond_8
    return v0
.end method

.method public a(Lq0/a;I)I
    .locals 5

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lq0/a;->b(I)B

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lo0/f;->f:Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    iput v1, p0, Lo0/f;->a:I

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result v1

    iput v1, p0, Lo0/f;->b:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lq0/a;->b(I)B

    move-result v0

    iput-byte v0, p0, Lo0/f;->c:B

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v0

    iput v0, p0, Lo0/f;->d:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lq0/a;->h(I)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lo0/f;->e:Landroid/graphics/PointF;

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    iget-object v3, p0, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_1
    if-ge v2, v1, :cond_1

    new-instance v3, Lo0/f$a;

    invoke-direct {v3}, Lo0/f$a;-><init>()V

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result v4

    iput v4, v3, Lo0/f$a;->a:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lq0/a;->f(I)F

    move-result v4

    iput v4, v3, Lo0/f$a;->b:F

    add-int/lit8 v0, v0, 0x4

    iget-object v4, p0, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo0/f;->c(Le1/o;)V

    invoke-virtual {p0, p1}, Lo0/f;->d(Le1/o;)V

    return-void
.end method

.method public c(Le1/o;)V
    .locals 2

    iget v0, p0, Lo0/f;->a:I

    const-string v1, "colorType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lo0/f;->f:Z

    const-string v1, "gradientRotatable"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget v0, p0, Lo0/f;->b:I

    const-string v1, "solidColor"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-byte v0, p0, Lo0/f;->c:B

    const-string v1, "gradientType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Lo0/f;->d:I

    const-string v1, "angle"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Le1/o;)V
    .locals 6

    iget-object v0, p0, Lo0/f;->e:Landroid/graphics/PointF;

    const-string v1, "radialGradientPosition"

    invoke-virtual {p1, v1, v0}, Le1/o;->t(Ljava/lang/String;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gradientColorInfoList"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v1, p0, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/f$a;

    const-string v3, "gradientColorInfo"

    invoke-virtual {p1, v3}, Le1/o;->y(Ljava/lang/String;)V

    iget v4, v2, Lo0/f$a;->a:I

    const-string v5, "color"

    invoke-virtual {p1, v5, v4}, Le1/o;->b(Ljava/lang/String;I)V

    iget v2, v2, Lo0/f$a;->b:F

    const-string v4, "position"

    invoke-virtual {p1, v4, v2}, Le1/o;->a(Ljava/lang/String;F)V

    invoke-virtual {p1, v3}, Le1/o;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public e(Lq0/a;I)I
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lq0/a;->q(II)V

    add-int/lit8 v1, p2, 0x1

    iget-boolean v2, p0, Lo0/f;->f:Z

    invoke-virtual {p1, v1, v2}, Lq0/a;->q(II)V

    add-int/2addr v1, v0

    iget v2, p0, Lo0/f;->a:I

    invoke-virtual {p1, v1, v2}, Lq0/a;->q(II)V

    add-int/2addr v1, v0

    iget v2, p0, Lo0/f;->b:I

    invoke-virtual {p1, v1, v2}, Lq0/a;->u(II)V

    add-int/lit8 v1, v1, 0x4

    iget-byte v2, p0, Lo0/f;->c:B

    invoke-virtual {p1, v1, v2}, Lq0/a;->q(II)V

    add-int/2addr v1, v0

    iget v2, p0, Lo0/f;->d:I

    invoke-virtual {p1, v1, v2}, Lq0/a;->r(II)V

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lo0/f;->e:Landroid/graphics/PointF;

    invoke-virtual {p1, v1, v2}, Lq0/a;->w(ILandroid/graphics/PointF;)V

    add-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lq0/a;->q(II)V

    add-int/2addr v1, v0

    iget-object v0, p0, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/f$a;

    iget v3, v2, Lo0/f$a;->a:I

    invoke-virtual {p1, v1, v3}, Lq0/a;->u(II)V

    add-int/lit8 v1, v1, 0x4

    iget v2, v2, Lo0/f$a;->b:F

    invoke-virtual {p1, v1, v2}, Lq0/a;->t(IF)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p2

    return v1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x13

    add-int/2addr v1, v0

    return v1
.end method

.method public g(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "colorType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput p1, p0, Lo0/f;->a:I

    goto :goto_0

    :cond_0
    const-string v1, "gradientRotatable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo0/f;->f:Z

    goto :goto_0

    :cond_1
    const-string v1, "solidColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lo0/f;->b:I

    goto :goto_0

    :cond_2
    const-string v1, "gradientType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lo0/f;->c:B

    goto :goto_0

    :cond_3
    const-string v1, "angle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo0/f;->d:I

    :cond_4
    :goto_0
    return-void
.end method

.method public h(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "radialGradientPosition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lq0/d;->g(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lo0/f;->e:Landroid/graphics/PointF;

    goto :goto_3

    :cond_0
    const-string v2, "gradientColorInfoList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    new-instance v0, Lo0/f$a;

    invoke-direct {v0}, Lo0/f$a;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v0, Lo0/f$a;->a:I

    goto :goto_2

    :cond_2
    const-string v5, "position"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Lo0/f$a;->b:F

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lo0/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public i(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "lineColorEffect"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p1, v3}, Lo0/f;->g(Lorg/xmlpull/v1/XmlPullParser;I)V

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

    const-string v4, "WCon_LineColorEffect"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lo0/f;->h(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method
