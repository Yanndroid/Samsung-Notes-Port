.class public Lo0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/b;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lo0/o;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lk0/b;


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo0/l;->p:Lk0/b;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lo0/l;->i:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lo0/l;->h:I

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$IMEActionType;->IME_ACTION_TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$IMEActionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lo0/l;->c:I

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextInputType;->INPUT_TYPE_TEXT:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextInputType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lo0/l;->d:I

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$EllipsisType;->ELLIPSIS_TYPE_TRIANGLE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$EllipsisType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lo0/l;->a:I

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->AUTO_FIT_OPTION_BOTH:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lo0/l;->b:I

    iput-object p1, p0, Lo0/l;->p:Lk0/b;

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
    instance-of v1, p1, Lo0/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/l;

    iget v1, p0, Lo0/l;->a:I

    iget v3, p1, Lo0/l;->a:I

    const-string v4, "]"

    const-string v5, " - "

    const-string v6, "WCon_ObjectShapeText"

    if-eq v1, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - ellipsisType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/l;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/l;->a:I

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget v1, p0, Lo0/l;->b:I

    iget v3, p1, Lo0/l;->b:I

    if-eq v1, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - textAutoFit["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/l;->b:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lo0/l;->c:I

    iget v3, p1, Lo0/l;->c:I

    if-eq v1, v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - imeActionType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/l;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/l;->c:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lo0/l;->d:I

    iget v3, p1, Lo0/l;->d:I

    if-eq v1, v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - textInputType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/l;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/l;->d:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lo0/l;->e:Lo0/o;

    iget-object v3, p1, Lo0/l;->e:Lo0/o;

    invoke-static {v1, v3}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - textCommon["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/l;->e:Lo0/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/l;->e:Lo0/o;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget v1, p0, Lo0/l;->f:I

    iget v3, p1, Lo0/l;->f:I

    if-eq v1, v3, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - textAreaType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/l;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/l;->f:I

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lo0/l;->g:Ljava/lang/String;

    iget-object v3, p1, Lo0/l;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - hintText["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/l;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/l;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    iget v1, p0, Lo0/l;->h:I

    iget v3, p1, Lo0/l;->h:I

    if-eq v1, v3, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - hintTextColor["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/l;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/l;->h:I

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lo0/l;->i:F

    iget v3, p1, Lo0/l;->i:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - hintTextFontSize["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/l;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/l;->i:F

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    iget v1, p0, Lo0/l;->j:F

    iget v3, p1, Lo0/l;->j:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - hintTextVerticalOffset["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/l;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/l;->j:F

    goto :goto_2

    :cond_b
    iget v1, p0, Lo0/l;->k:I

    iget v3, p1, Lo0/l;->k:I

    if-eq v1, v3, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - hintTextStyle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/l;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/l;->k:I

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lo0/l;->l:I

    iget v3, p1, Lo0/l;->l:I

    if-eq v1, v3, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " !! equals() - NE - textBinarySize["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo0/l;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lo0/l;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-boolean v1, p0, Lo0/l;->m:Z

    iget-boolean v3, p1, Lo0/l;->m:Z

    if-eq v1, v3, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - isHintTextVisiable["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo0/l;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lo0/l;->m:Z

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_e
    iget-boolean v1, p0, Lo0/l;->n:Z

    iget-boolean v3, p1, Lo0/l;->n:Z

    if-eq v1, v3, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - textReadOnly["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo0/l;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lo0/l;->n:Z

    goto :goto_3

    :cond_f
    iget-boolean v1, p0, Lo0/l;->o:Z

    iget-boolean v3, p1, Lo0/l;->o:Z

    if-eq v1, v3, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - isTextEditable["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo0/l;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lo0/l;->o:Z

    goto :goto_3

    :cond_10
    return v0
.end method

.method public a(Lq0/a;II)I
    .locals 3

    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v0

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p1, v1, v0}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo0/l;->g:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit16 v0, p3, 0x400

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Lo0/l;->h:I

    add-int/lit8 v1, v1, 0x4

    :cond_1
    and-int/lit16 v0, p3, 0x800

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Lo0/l;->i:F

    add-int/lit8 v1, v1, 0x4

    :cond_2
    const/high16 v0, 0x400000

    and-int/2addr p3, v0

    if-eqz p3, :cond_3

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result p1

    iput p1, p0, Lo0/l;->k:I

    add-int/lit8 v1, v1, 0x1

    :cond_3
    sub-int/2addr v1, p2

    return v1
.end method

.method public b(Lq0/a;III)I
    .locals 3

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Lo0/l;->l:I

    add-int/lit8 v0, p2, 0x4

    iget-object v1, p0, Lo0/l;->e:Lo0/o;

    if-nez v1, :cond_0

    new-instance v1, Lo0/o;

    invoke-direct {v1}, Lo0/o;-><init>()V

    iput-object v1, p0, Lo0/l;->e:Lo0/o;

    :cond_0
    iget-object v1, p0, Lo0/l;->e:Lo0/o;

    iget-object v2, p0, Lo0/l;->p:Lk0/b;

    invoke-virtual {v1, p1, v0, v2, p4}, Lo0/o;->o(Lq0/a;ILk0/b;I)I

    iget p4, p0, Lo0/l;->l:I

    add-int/2addr v0, p4

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    invoke-virtual {p1, v0}, Lq0/a;->b(I)B

    move-result p1

    iput p1, p0, Lo0/l;->f:I

    add-int/lit8 v0, v0, 0x1

    :cond_2
    sub-int/2addr v0, p2

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo0/l;->e:Lo0/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo0/o;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lo0/l;->m:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lo0/l;->o:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lo0/l;->n:Z

    return v0
.end method
