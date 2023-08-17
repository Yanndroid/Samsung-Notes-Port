.class public Lo0/d;
.super Lo0/c;
.source "SourceFile"


# instance fields
.field public b:B

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Landroid/graphics/Rect;

.field public f:I

.field public g:Landroid/graphics/RectF;

.field public h:Landroid/graphics/PointF;

.field public i:F

.field public j:F

.field public k:F

.field public l:Z

.field public m:Lk0/a;


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo0/c;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lo0/d;->c:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo0/d;->e:Landroid/graphics/Rect;

    iget-object p1, p1, Lk0/b;->b:Lk0/a;

    iput-object p1, p0, Lo0/d;->m:Lk0/a;

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo0/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/d;

    iget v1, p0, Lo0/c;->a:I

    iget v3, p1, Lo0/c;->a:I

    const-string v4, "]"

    const-string v5, " - "

    const-string v6, "WCon_FillImageEffect"

    if-eq v1, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/c;->a:I

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget v1, p0, Lo0/d;->c:I

    iget v3, p1, Lo0/d;->c:I

    if-eq v1, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - imageId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/d;->c:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lo0/d;->d:Ljava/lang/String;

    iget-object v3, p1, Lo0/d;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - imageHash["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/d;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lo0/d;->e:Landroid/graphics/Rect;

    iget-object v3, p1, Lo0/d;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - imageNinePatchRect["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/d;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/d;->e:Landroid/graphics/Rect;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget v1, p0, Lo0/d;->f:I

    iget v3, p1, Lo0/d;->f:I

    if-eq v1, v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - imageNinePatchWidth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/d;->f:I

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lo0/d;->g:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v7, p1, Lo0/d;->g:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - stretchOffset.left["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/d;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/d;->g:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v8, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - stretchOffset.top["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/d;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/d;->g:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_3

    :cond_8
    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v8, v7, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - stretchOffset.right["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/d;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/d;->g:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_9
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - stretchOffset.bottom["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/d;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/d;->g:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lo0/d;->h:Landroid/graphics/PointF;

    iget-object v3, p1, Lo0/d;->h:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - tilingOffset["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/d;->h:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/d;->h:Landroid/graphics/PointF;

    goto/16 :goto_2

    :cond_b
    iget v1, p0, Lo0/d;->i:F

    iget v3, p1, Lo0/d;->i:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - tilingScaleX["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/d;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/d;->i:F

    goto/16 :goto_3

    :cond_c
    iget v1, p0, Lo0/d;->j:F

    iget v3, p1, Lo0/d;->j:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - tilingScaleY["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/d;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/d;->j:F

    goto/16 :goto_3

    :cond_d
    iget v1, p0, Lo0/d;->k:F

    iget v3, p1, Lo0/d;->k:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - transparency["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/d;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/d;->k:F

    goto/16 :goto_3

    :cond_e
    iget-boolean v1, p0, Lo0/d;->l:Z

    iget-boolean v3, p1, Lo0/d;->l:Z

    if-eq v1, v3, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - rotatable["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo0/d;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lo0/d;->l:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_f
    return v0
.end method

.method public a(Le1/o;)V
    .locals 2

    invoke-super {p0, p1}, Lo0/c;->a(Le1/o;)V

    iget-byte v0, p0, Lo0/d;->b:B

    const-string v1, "imageType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lo0/d;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo0/d;->m:Lk0/a;

    iget v1, p0, Lo0/d;->c:I

    invoke-virtual {v0, v1}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo0/d;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lo0/d;->d:Ljava/lang/String;

    const-string v1, "imageId"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lo0/d;->i:F

    const-string/jumbo v1, "tilingScaleX"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    iget v0, p0, Lo0/d;->j:F

    const-string/jumbo v1, "tilingScaleY"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    iget v0, p0, Lo0/d;->k:F

    const-string/jumbo v1, "transparency"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    iget-boolean v0, p0, Lo0/d;->l:Z

    const-string v1, "rotatable"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget v0, p0, Lo0/d;->f:I

    const-string v1, "ninePatchWidth"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo0/d;->a(Le1/o;)V

    invoke-virtual {p0, p1}, Lo0/d;->c(Le1/o;)V

    return-void
.end method

.method public c(Le1/o;)V
    .locals 2

    invoke-super {p0, p1}, Lo0/c;->c(Le1/o;)V

    iget-object v0, p0, Lo0/d;->g:Landroid/graphics/RectF;

    const-string v1, "stretchOffset"

    invoke-virtual {p1, v1, v0}, Le1/o;->v(Ljava/lang/String;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lo0/d;->h:Landroid/graphics/PointF;

    const-string/jumbo v1, "tilingOffset"

    invoke-virtual {p1, v1, v0}, Le1/o;->t(Ljava/lang/String;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lo0/d;->e:Landroid/graphics/Rect;

    const-string v1, "ninePatchRect"

    invoke-virtual {p1, v1, v0}, Le1/o;->u(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public g(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imageType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lo0/d;->b:B

    goto/16 :goto_0

    :cond_0
    const-string v1, "imageId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo0/d;->d:Ljava/lang/String;

    iget-object p2, p0, Lo0/d;->m:Lk0/a;

    invoke-virtual {p2, p1}, Lk0/a;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo0/d;->c:I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "tilingScaleX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lo0/d;->i:F

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "tilingScaleY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lo0/d;->j:F

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "transparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lo0/d;->k:F

    goto :goto_0

    :cond_4
    const-string v1, "rotatable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo0/d;->l:Z

    goto :goto_0

    :cond_5
    const-string v1, "ninePatchWidth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo0/d;->f:I

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Lo0/c;->g(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public h(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stretchOffset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lq0/d;->j(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lo0/d;->g:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "tilingOffset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lq0/d;->g(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lo0/d;->h:Landroid/graphics/PointF;

    goto :goto_0

    :cond_1
    const-string v1, "ninePatchRect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lq0/d;->h(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lo0/d;->e:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lo0/c;->h(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
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

    invoke-virtual {p0, p1, v3}, Lo0/d;->g(Lorg/xmlpull/v1/XmlPullParser;I)V

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

    const-string v4, "WCon_FillImageEffect"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lo0/d;->h(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public j(Lq0/a;I)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2}, Lq0/a;->b(I)B

    move-result v1

    iput-byte v1, p0, Lo0/d;->b:B

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result v1

    iput v1, p0, Lo0/d;->c:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lq0/a;->m(I)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lo0/d;->g:Landroid/graphics/RectF;

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Lq0/a;->h(I)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lo0/d;->h:Landroid/graphics/PointF;

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Lq0/a;->f(I)F

    move-result v1

    iput v1, p0, Lo0/d;->i:F

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lq0/a;->f(I)F

    move-result v1

    iput v1, p0, Lo0/d;->j:F

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lq0/a;->f(I)F

    move-result v1

    iput v1, p0, Lo0/d;->k:F

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lq0/a;->b(I)B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lo0/d;->l:Z

    invoke-virtual {p1, v1}, Lq0/a;->k(I)Landroid/graphics/Rect;

    move-result-object v0

    add-int/lit8 v1, v1, 0x10

    iget v2, p0, Lo0/d;->c:I

    if-ltz v2, :cond_1

    iput-object v0, p0, Lo0/d;->e:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result p1

    add-int/lit8 v1, v1, 0x4

    iget v0, p0, Lo0/d;->c:I

    if-ltz v0, :cond_2

    iput p1, p0, Lo0/d;->f:I

    :cond_2
    sub-int/2addr v1, p2

    return v1
.end method

.method public k(Lq0/a;I)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Lo0/d;->b:B

    invoke-virtual {p1, p2, v1}, Lq0/a;->q(II)V

    iget-object v1, p0, Lo0/d;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lo0/d;->m:Lk0/a;

    invoke-virtual {v2, v1}, Lk0/a;->e(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lo0/d;->c:I

    :cond_0
    iget v1, p0, Lo0/d;->c:I

    invoke-virtual {p1, v0, v1}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lo0/d;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Lq0/a;->B(ILandroid/graphics/RectF;)V

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lo0/d;->h:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v1}, Lq0/a;->w(ILandroid/graphics/PointF;)V

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lo0/d;->i:F

    invoke-virtual {p1, v0, v1}, Lq0/a;->t(IF)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lo0/d;->j:F

    invoke-virtual {p1, v0, v1}, Lq0/a;->t(IF)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lo0/d;->k:F

    invoke-virtual {p1, v0, v1}, Lq0/a;->t(IF)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Lo0/d;->l:Z

    invoke-virtual {p1, v0, v2}, Lq0/a;->q(II)V

    iget-object v0, p0, Lo0/d;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Lq0/a;->z(ILandroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x10

    iget v0, p0, Lo0/d;->f:I

    invoke-virtual {p1, v1, v0}, Lq0/a;->u(II)V

    add-int/lit8 v1, v1, 0x4

    sub-int/2addr v1, p2

    return v1
.end method
