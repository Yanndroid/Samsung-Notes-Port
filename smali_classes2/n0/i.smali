.class public Ln0/i;
.super Ln0/j;
.source "SourceFile"


# instance fields
.field public W:Lo0/h;

.field public X:Lo0/j;

.field public Y:Lo0/l;

.field public Z:Lo0/i;

.field public a0:B

.field public b0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public c0:I

.field public d0:I

.field public e0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILk0/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ln0/j;-><init>(ILk0/b;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln0/i;->b0:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Ln0/i;->c0:I

    iput p1, p0, Ln0/i;->d0:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln0/i;->e0:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln0/i;->f0:Ljava/util/ArrayList;

    new-instance p1, Lo0/h;

    invoke-direct {p1}, Lo0/h;-><init>()V

    iput-object p1, p0, Ln0/i;->W:Lo0/h;

    new-instance p1, Lo0/j;

    invoke-direct {p1}, Lo0/j;-><init>()V

    iput-object p1, p0, Ln0/i;->X:Lo0/j;

    new-instance p1, Lo0/l;

    invoke-direct {p1, p2}, Lo0/l;-><init>(Lk0/b;)V

    iput-object p1, p0, Ln0/i;->Y:Lo0/l;

    new-instance p1, Lo0/i;

    invoke-direct {p1}, Lo0/i;-><init>()V

    iput-object p1, p0, Ln0/i;->Z:Lo0/i;

    return-void
.end method

.method public constructor <init>(Lk0/b;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Ln0/j;-><init>(ILk0/b;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln0/i;->b0:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Ln0/i;->c0:I

    iput v0, p0, Ln0/i;->d0:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln0/i;->e0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln0/i;->f0:Ljava/util/ArrayList;

    new-instance v0, Lo0/h;

    invoke-direct {v0}, Lo0/h;-><init>()V

    iput-object v0, p0, Ln0/i;->W:Lo0/h;

    new-instance v0, Lo0/j;

    invoke-direct {v0}, Lo0/j;-><init>()V

    iput-object v0, p0, Ln0/i;->X:Lo0/j;

    new-instance v0, Lo0/l;

    invoke-direct {v0, p1}, Lo0/l;-><init>(Lk0/b;)V

    iput-object v0, p0, Ln0/i;->Y:Lo0/l;

    new-instance p1, Lo0/i;

    invoke-direct {p1}, Lo0/i;-><init>()V

    iput-object p1, p0, Ln0/i;->Z:Lo0/i;

    return-void
.end method

.method private c(Lq0/a;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p2}, Lq0/a;->e(I)I

    move-result v2

    add-int/lit8 v3, p2, 0x4

    invoke-virtual {v1, v3}, Lq0/a;->c(I)S

    move-result v4

    const/4 v5, 0x2

    add-int/2addr v3, v5

    const/4 v6, -0x1

    const/4 v7, 0x7

    if-eq v4, v7, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplyOwnBinary() - Invalid data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WCon_ObjectShape"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-virtual {v1, v3}, Lq0/a;->e(I)I

    move-result v4

    const/4 v8, 0x4

    add-int/2addr v3, v8

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v3, v10

    if-le v9, v10, :cond_1

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v9, v10, :cond_2

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v12

    add-int/2addr v3, v9

    move v9, v12

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v12

    add-int/2addr v3, v10

    if-le v12, v8, :cond_3

    invoke-virtual {v1, v3}, Lq0/a;->e(I)I

    move-result v5

    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    :cond_3
    if-eq v12, v10, :cond_6

    if-eq v12, v5, :cond_5

    if-eq v12, v8, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v3}, Lq0/a;->e(I)I

    move-result v5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Lq0/a;->c(I)S

    move-result v5

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v5

    :goto_1
    add-int/2addr v3, v12

    :goto_2
    and-int/lit8 v12, v9, 0x1

    if-eqz v12, :cond_7

    move v12, v10

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    and-int/lit8 v13, v9, 0x2

    if-eqz v13, :cond_8

    move v13, v10

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v0, v1, v3, v9}, Ln0/i;->J(Lq0/a;II)I

    iget-object v9, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v1, v3}, Lq0/a;->e(I)I

    move-result v14

    iput v14, v9, Lo0/h;->a:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v3}, Lq0/a;->l(I)Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object v9

    iget-object v14, v0, Ln0/i;->W:Lo0/h;

    new-instance v15, Landroid/graphics/RectF;

    iget-wide v10, v9, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    double-to-float v10, v10

    iget-wide v6, v9, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    double-to-float v6, v6

    move v7, v12

    iget-wide v11, v9, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    double-to-float v11, v11

    iget-wide v8, v9, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    double-to-float v8, v8

    invoke-direct {v15, v10, v6, v11, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v15, v14, Lo0/h;->m:Landroid/graphics/RectF;

    add-int/lit8 v3, v3, 0x20

    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v1, v3}, Lq0/a;->f(I)F

    move-result v8

    iput v8, v6, Lo0/h;->n:F

    const/4 v6, 0x4

    add-int/2addr v3, v6

    iget-object v8, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v8}, Lo0/h;->e()Lo0/k;

    move-result-object v8

    if-nez v8, :cond_9

    const/4 v8, -0x1

    return v8

    :cond_9
    invoke-virtual {v1, v3}, Lq0/a;->e(I)I

    move-result v8

    add-int/2addr v3, v6

    if-lez v8, :cond_b

    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v6}, Lo0/h;->f()Lo0/k;

    move-result-object v6

    invoke-virtual {v6}, Lo0/k;->b()Lo0/m;

    move-result-object v6

    if-nez v6, :cond_a

    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v6}, Lo0/h;->f()Lo0/k;

    move-result-object v6

    invoke-virtual {v6}, Lo0/k;->a()V

    :cond_a
    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v6}, Lo0/h;->f()Lo0/k;

    move-result-object v6

    iget-object v8, v0, Ln0/i;->W:Lo0/h;

    iget-object v9, v8, Lo0/h;->m:Landroid/graphics/RectF;

    iput-object v9, v6, Lo0/k;->c:Landroid/graphics/RectF;

    invoke-virtual {v8}, Lo0/h;->f()Lo0/k;

    move-result-object v6

    iget-object v8, v0, Ln0/i;->W:Lo0/h;

    iget v9, v8, Lo0/h;->n:F

    iput v9, v6, Lo0/k;->d:F

    invoke-virtual {v8}, Lo0/h;->f()Lo0/k;

    move-result-object v6

    invoke-virtual {v6, v7}, Lo0/k;->e(Z)V

    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v6}, Lo0/h;->f()Lo0/k;

    move-result-object v6

    invoke-virtual {v6, v13}, Lo0/k;->f(Z)V

    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v6}, Lo0/h;->f()Lo0/k;

    move-result-object v6

    invoke-virtual {v6, v7}, Lo0/k;->e(Z)V

    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v6}, Lo0/h;->f()Lo0/k;

    move-result-object v6

    invoke-virtual {v6}, Lo0/k;->b()Lo0/m;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Lo0/m;->a(Lq0/a;I)I

    move-result v6

    add-int/2addr v3, v6

    :cond_b
    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v6

    iput-byte v6, v0, Ln0/i;->a0:B

    const/4 v6, 0x1

    add-int/2addr v3, v6

    const/4 v11, 0x0

    :goto_5
    iget-byte v6, v0, Ln0/i;->a0:B

    if-ge v11, v6, :cond_c

    invoke-virtual {v1, v3}, Lq0/a;->j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;

    move-result-object v6

    iget-object v7, v0, Ln0/i;->b0:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/PointF;

    iget-wide v9, v6, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    double-to-float v9, v9

    iget-wide v12, v6, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    double-to-float v6, v12

    invoke-direct {v8, v9, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Ln0/a;->p()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_d

    invoke-virtual {v1, v3}, Lq0/a;->l(I)Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object v3

    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    new-instance v7, Landroid/graphics/RectF;

    iget-wide v8, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    double-to-float v8, v8

    iget-wide v9, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    double-to-float v9, v9

    iget-wide v10, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    double-to-float v10, v10

    iget-wide v11, v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    double-to-float v3, v11

    invoke-direct {v7, v8, v9, v10, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, v6, Lo0/h;->l:Landroid/graphics/RectF;

    :cond_d
    if-eqz v4, :cond_12

    add-int v3, p2, v4

    iget-object v4, v0, Ln0/i;->Y:Lo0/l;

    iget v6, v0, Ln0/a;->m:I

    invoke-virtual {v4, v1, v3, v5, v6}, Lo0/l;->b(Lq0/a;III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v0, Ln0/i;->X:Lo0/j;

    invoke-virtual {v4, v1, v3, v5}, Lo0/j;->a(Lq0/a;II)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v5}, Ln0/i;->I(Lq0/a;II)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v4, v1, v3, v5}, Lo0/h;->a(Lq0/a;II)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v0, Ln0/i;->Y:Lo0/l;

    invoke-virtual {v4, v1, v3, v5}, Lo0/l;->a(Lq0/a;II)I

    move-result v4

    add-int/2addr v3, v4

    and-int/lit16 v4, v5, 0x1000

    if-eqz v4, :cond_e

    iget-object v4, v0, Ln0/i;->Y:Lo0/l;

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v6

    iput v6, v4, Lo0/l;->a:I

    add-int/lit8 v3, v3, 0x1

    :cond_e
    and-int/lit16 v4, v5, 0x2000

    if-eqz v4, :cond_f

    iget-object v4, v0, Ln0/i;->Y:Lo0/l;

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v6

    iput v6, v4, Lo0/l;->b:I

    add-int/lit8 v3, v3, 0x1

    :cond_f
    and-int/lit16 v4, v5, 0x4000

    if-eqz v4, :cond_10

    iget-object v4, v0, Ln0/i;->Y:Lo0/l;

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v6

    iput v6, v4, Lo0/l;->c:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_10
    iget-object v4, v0, Ln0/i;->Y:Lo0/l;

    sget-object v6, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$IMEActionType;->IME_ACTION_TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$IMEActionType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    iput v6, v4, Lo0/l;->c:I

    :goto_6
    const v4, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_11

    iget-object v4, v0, Ln0/i;->Y:Lo0/l;

    invoke-virtual {v1, v3}, Lq0/a;->b(I)B

    move-result v6

    iput v6, v4, Lo0/l;->d:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    iget-object v4, v0, Ln0/i;->Y:Lo0/l;

    const/4 v6, 0x1

    iput v6, v4, Lo0/l;->d:I

    :goto_7
    iget-object v4, v0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v4, v1, v3, v5}, Lo0/h;->b(Lq0/a;II)I

    const/high16 v4, 0x200000

    and-int/2addr v4, v5

    if-eqz v4, :cond_12

    iget-object v4, v0, Ln0/i;->Y:Lo0/l;

    invoke-virtual {v1, v3}, Lq0/a;->f(I)F

    move-result v1

    iput v1, v4, Lo0/l;->j:F

    :cond_12
    return v2
.end method

.method private n(Lq0/a;I)Z
    .locals 12

    add-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, 0xb

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ln0/i;->P()B

    move-result v2

    iget-object v3, p0, Ln0/i;->W:Lo0/h;

    iget v3, v3, Lo0/h;->a:I

    invoke-virtual {p1, v0, v3}, Lq0/a;->u(II)V

    const/4 v3, 0x4

    add-int/2addr v0, v3

    new-instance v4, Lcom/samsung/android/sdk/pen/base/SpenRectD;

    iget-object v5, p0, Ln0/i;->W:Lo0/h;

    iget-object v5, v5, Lo0/h;->m:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/pen/base/SpenRectD;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, v0, v4}, Lq0/a;->A(ILcom/samsung/android/sdk/pen/base/SpenRectD;)V

    add-int/lit8 v0, v0, 0x20

    iget-object v4, p0, Ln0/i;->W:Lo0/h;

    iget v4, v4, Lo0/h;->n:F

    invoke-virtual {p1, v0, v4}, Lq0/a;->t(IF)V

    add-int/2addr v0, v3

    iget-object v4, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v4}, Lo0/h;->f()Lo0/k;

    move-result-object v4

    invoke-virtual {v4}, Lo0/k;->b()Lo0/m;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lo0/m;->d()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Lq0/a;->u(II)V

    add-int/2addr v0, v3

    invoke-virtual {v4, p1, v0}, Lo0/m;->c(Lq0/a;I)I

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lq0/a;->u(II)V

    add-int/2addr v0, v3

    :goto_0
    iget-byte v4, p0, Ln0/i;->a0:B

    invoke-virtual {p1, v0, v4}, Lq0/a;->q(II)V

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iget-byte v5, p0, Ln0/i;->a0:B

    if-lez v5, :cond_1

    new-instance v5, Lcom/samsung/android/sdk/pen/base/SpenPointD;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/base/SpenPointD;-><init>()V

    move v6, v1

    :goto_1
    iget-byte v7, p0, Ln0/i;->a0:B

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Ln0/i;->b0:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    invoke-virtual {v5, v7}, Lcom/samsung/android/sdk/pen/base/SpenPointD;->set(Landroid/graphics/PointF;)V

    invoke-virtual {p1, v0, v5}, Lq0/a;->y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ln0/a;->p()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    new-instance v5, Lcom/samsung/android/sdk/pen/base/SpenRectD;

    iget-object v7, p0, Ln0/i;->W:Lo0/h;

    iget-object v7, v7, Lo0/h;->l:Landroid/graphics/RectF;

    invoke-direct {v5, v7}, Lcom/samsung/android/sdk/pen/base/SpenRectD;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, v0, v5}, Lq0/a;->A(ILcom/samsung/android/sdk/pen/base/SpenRectD;)V

    add-int/lit8 v0, v0, 0x20

    :cond_2
    sub-int v5, v0, p2

    iget-object v7, p0, Ln0/i;->Y:Lo0/l;

    iget-object v7, v7, Lo0/l;->e:Lo0/o;

    if-eqz v7, :cond_3

    iget v8, p0, Ln0/a;->m:I

    invoke-virtual {v7, v8}, Lo0/o;->q(I)I

    move-result v7

    invoke-virtual {p1, v0, v7}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    iget-object v8, p0, Ln0/i;->Y:Lo0/l;

    iget-object v8, v8, Lo0/l;->e:Lo0/o;

    iget v9, p0, Ln0/a;->m:I

    invoke-virtual {v8, p1, v0, v9}, Lo0/o;->p(Lq0/a;II)V

    add-int/2addr v0, v7

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    iget-object v8, p0, Ln0/i;->Y:Lo0/l;

    iget v8, v8, Lo0/l;->f:I

    sget-object v9, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextAreaType;->TEXT_AREA_TYPE_MARGIN:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextAreaType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Ln0/i;->Y:Lo0/l;

    iget v8, v8, Lo0/l;->f:I

    invoke-virtual {p1, v0, v8}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    or-int/lit8 v7, v7, 0x2

    :cond_4
    iget-object v8, p0, Ln0/i;->X:Lo0/j;

    invoke-virtual {v8, p1, v0}, Lo0/j;->b(Lq0/a;I)I

    move-result v8

    or-int/2addr v7, v8

    iget-object v8, p0, Ln0/i;->X:Lo0/j;

    invoke-virtual {v8}, Lo0/j;->c()I

    move-result v8

    add-int/2addr v0, v8

    iget-object v8, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v8}, Lo0/h;->d()Lo0/c;

    move-result-object v8

    const/4 v9, 0x2

    if-eqz v8, :cond_9

    iget v8, v8, Lo0/c;->a:I

    if-eq v8, v4, :cond_8

    if-eq v8, v9, :cond_7

    const/4 v10, 0x3

    if-eq v8, v10, :cond_6

    if-eq v8, v3, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v8, p0, Ln0/i;->W:Lo0/h;

    iget-object v8, v8, Lo0/h;->c:Lo0/a;

    invoke-virtual {v8}, Lo0/a;->d()I

    move-result v8

    iget-object v10, p0, Ln0/i;->W:Lo0/h;

    iget-object v10, v10, Lo0/h;->c:Lo0/a;

    invoke-virtual {v10}, Lo0/a;->d()I

    move-result v10

    invoke-virtual {p1, v0, v10}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0, v3}, Lq0/a;->q(II)V

    add-int/2addr v0, v4

    iget-object v10, p0, Ln0/i;->W:Lo0/h;

    iget-object v10, v10, Lo0/h;->c:Lo0/a;

    invoke-virtual {v10, p1, v0}, Lo0/a;->k(Lq0/a;I)I

    goto :goto_3

    :cond_6
    iget-object v8, p0, Ln0/i;->W:Lo0/h;

    iget-object v8, v8, Lo0/h;->f:Lo0/e;

    invoke-virtual {v8}, Lo0/e;->d()I

    move-result v8

    iget-object v11, p0, Ln0/i;->W:Lo0/h;

    iget-object v11, v11, Lo0/h;->f:Lo0/e;

    invoke-virtual {v11}, Lo0/e;->d()I

    move-result v11

    invoke-virtual {p1, v0, v11}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0, v10}, Lq0/a;->q(II)V

    add-int/2addr v0, v4

    iget-object v10, p0, Ln0/i;->W:Lo0/h;

    iget-object v10, v10, Lo0/h;->f:Lo0/e;

    invoke-virtual {v10, p1, v0}, Lo0/e;->k(Lq0/a;I)I

    goto :goto_3

    :cond_7
    iget-object v8, p0, Ln0/i;->W:Lo0/h;

    iget-object v8, v8, Lo0/h;->e:Lo0/d;

    invoke-virtual {v8}, Lo0/d;->d()I

    move-result v8

    iget-object v10, p0, Ln0/i;->W:Lo0/h;

    iget-object v10, v10, Lo0/h;->e:Lo0/d;

    invoke-virtual {v10}, Lo0/d;->d()I

    move-result v10

    invoke-virtual {p1, v0, v10}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0, v9}, Lq0/a;->q(II)V

    add-int/2addr v0, v4

    iget-object v10, p0, Ln0/i;->W:Lo0/h;

    iget-object v10, v10, Lo0/h;->e:Lo0/d;

    invoke-virtual {v10, p1, v0}, Lo0/d;->k(Lq0/a;I)I

    goto :goto_3

    :cond_8
    iget-object v8, p0, Ln0/i;->W:Lo0/h;

    iget-object v8, v8, Lo0/h;->d:Lo0/b;

    invoke-virtual {v8}, Lo0/b;->d()I

    move-result v8

    iget-object v10, p0, Ln0/i;->W:Lo0/h;

    iget-object v10, v10, Lo0/h;->d:Lo0/b;

    invoke-virtual {v10}, Lo0/b;->d()I

    move-result v10

    invoke-virtual {p1, v0, v10}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0, v4}, Lq0/a;->q(II)V

    add-int/2addr v0, v4

    iget-object v10, p0, Ln0/i;->W:Lo0/h;

    iget-object v10, v10, Lo0/h;->d:Lo0/b;

    invoke-virtual {v10, p1, v0}, Lo0/b;->k(Lq0/a;I)I

    :goto_3
    add-int/2addr v0, v8

    or-int/lit8 v7, v7, 0x20

    :cond_9
    :goto_4
    invoke-virtual {p0, p1, v0}, Ln0/i;->O(Lq0/a;I)I

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {p0}, Ln0/i;->M()I

    move-result v8

    add-int/2addr v0, v8

    invoke-virtual {p0, p1, v0}, Ln0/i;->Q(Lq0/a;I)I

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {p0}, Ln0/i;->N()I

    move-result v8

    add-int/2addr v0, v8

    iget-object v8, p0, Ln0/i;->Y:Lo0/l;

    iget v8, v8, Lo0/l;->j:F

    const/4 v10, 0x0

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_a

    invoke-virtual {p1, v0, v8}, Lq0/a;->t(IF)V

    add-int/lit8 v0, v0, 0x4

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    :cond_a
    sub-int/2addr v0, p2

    if-nez v7, :cond_b

    move v5, v1

    :cond_b
    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/2addr p2, v3

    invoke-virtual {p1, p2, v6}, Lq0/a;->r(II)V

    add-int/2addr p2, v9

    invoke-virtual {p1, p2, v5}, Lq0/a;->u(II)V

    add-int/2addr p2, v3

    invoke-virtual {p1, p2, v4}, Lq0/a;->q(II)V

    add-int/2addr p2, v4

    invoke-virtual {p1, p2, v2}, Lq0/a;->q(II)V

    add-int/2addr p2, v4

    invoke-virtual {p1, p2, v3}, Lq0/a;->q(II)V

    add-int/2addr p2, v4

    invoke-virtual {p1, p2, v7}, Lq0/a;->u(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    const-string p2, "WCon_ObjectShape"

    const-string v0, "Error in IO operation : "

    invoke-static {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private o()I
    .locals 4

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    const/16 v1, 0x3d

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->b()Lo0/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo0/m;->d()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    iget-byte v0, p0, Ln0/i;->a0:B

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ln0/a;->p()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x20

    :cond_1
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    if-eqz v0, :cond_2

    iget v2, p0, Ln0/a;->m:I

    invoke-virtual {v0, v2}, Lo0/o;->q(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->f:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextAreaType;->TEXT_AREA_TYPE_MARGIN:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextAreaType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget-object v0, p0, Ln0/i;->X:Lo0/j;

    invoke-virtual {v0}, Lo0/j;->c()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->d()Lo0/c;

    move-result-object v0

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->d()Lo0/c;

    move-result-object v0

    invoke-virtual {v0}, Lo0/c;->d()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v2, v0, Lo0/l;->h:I

    const/high16 v3, -0x1000000

    if-eq v2, v3, :cond_6

    add-int/lit8 v1, v1, 0x4

    :cond_6
    iget v2, v0, Lo0/l;->i:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x4

    :cond_7
    iget v2, v0, Lo0/l;->k:I

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    iget v0, v0, Lo0/l;->a:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$EllipsisType;->ELLIPSIS_TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$EllipsisType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->b:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->AUTO_FIT_OPTION_BOTH:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->c:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$IMEActionType;->IME_ACTION_TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$IMEActionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->d:I

    sget-object v2, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextInputType;->INPUT_TYPE_TEXT:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextInputType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    :cond_c
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->j:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_d

    add-int/lit8 v1, v1, 0x4

    :cond_d
    return v1
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

    invoke-virtual {p0, p1, v3}, Ln0/i;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

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

    const-string v4, "WCon_ObjectShape"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ln0/i;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public final I(Lq0/a;II)I
    .locals 4

    and-int/lit8 p3, p3, 0x20

    if-eqz p3, :cond_4

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result p3

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p1, v0}, Lq0/a;->b(I)B

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ln0/i;->W:Lo0/h;

    new-instance v2, Lo0/a;

    invoke-direct {v2}, Lo0/a;-><init>()V

    iput-object v2, v1, Lo0/h;->c:Lo0/a;

    iget-object v1, p0, Ln0/i;->W:Lo0/h;

    iget-object v1, v1, Lo0/h;->c:Lo0/a;

    invoke-virtual {v1, p1, v0}, Lo0/a;->j(Lq0/a;I)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ln0/i;->W:Lo0/h;

    new-instance v2, Lo0/e;

    invoke-direct {v2}, Lo0/e;-><init>()V

    iput-object v2, v1, Lo0/h;->f:Lo0/e;

    iget-object v1, p0, Ln0/i;->W:Lo0/h;

    iget-object v1, v1, Lo0/h;->f:Lo0/e;

    invoke-virtual {v1, p1, v0}, Lo0/e;->j(Lq0/a;I)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ln0/i;->W:Lo0/h;

    new-instance v2, Lo0/d;

    iget-object v3, p0, Ln0/a;->O:Lk0/b;

    invoke-direct {v2, v3}, Lo0/d;-><init>(Lk0/b;)V

    iput-object v2, v1, Lo0/h;->e:Lo0/d;

    iget-object v1, p0, Ln0/i;->W:Lo0/h;

    iget-object v1, v1, Lo0/h;->e:Lo0/d;

    invoke-virtual {v1, p1, v0}, Lo0/d;->j(Lq0/a;I)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ln0/i;->W:Lo0/h;

    new-instance v2, Lo0/b;

    invoke-direct {v2}, Lo0/b;-><init>()V

    iput-object v2, v1, Lo0/h;->d:Lo0/b;

    iget-object v1, p0, Ln0/i;->W:Lo0/h;

    iget-object v1, v1, Lo0/h;->d:Lo0/b;

    invoke-virtual {v1, p1, v0}, Lo0/b;->j(Lq0/a;I)I

    :goto_0
    add-int/2addr v0, p3

    :goto_1
    sub-int/2addr v0, p2

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
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
    instance-of v1, p1, Ln0/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Ln0/i;

    invoke-super {p0, p1}, Ln0/j;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "WCon_ObjectShape"

    if-nez p1, :cond_2

    const-string p1, " !! equals() - NE - super check"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object p1, p0, Ln0/i;->W:Lo0/h;

    iget-object v4, v1, Ln0/i;->W:Lo0/h;

    invoke-static {p1, v4}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v4, "]"

    const-string v5, " - "

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - shapeData["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/i;->W:Lo0/h;

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ln0/i;->X:Lo0/j;

    iget-object v6, v1, Ln0/i;->X:Lo0/j;

    invoke-static {p1, v6}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - shapePen["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/i;->X:Lo0/j;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/i;->X:Lo0/j;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Ln0/i;->Y:Lo0/l;

    iget-object v6, v1, Ln0/i;->Y:Lo0/l;

    invoke-static {p1, v6}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - shapeText["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/i;->Y:Lo0/l;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ln0/i;->Z:Lo0/i;

    iget-object v6, v1, Ln0/i;->Z:Lo0/i;

    invoke-static {p1, v6}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - shapeImage["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/i;->Z:Lo0/i;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/i;->Z:Lo0/i;

    goto :goto_1

    :cond_6
    iget-byte p1, p0, Ln0/i;->a0:B

    iget-byte v6, v1, Ln0/i;->a0:B

    if-eq p1, v6, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - controlPointCount["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Ln0/i;->a0:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, v1, Ln0/i;->a0:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    iget-object p1, p0, Ln0/i;->b0:Ljava/util/ArrayList;

    iget-object v6, v1, Ln0/i;->b0:Ljava/util/ArrayList;

    invoke-static {p1, v6}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - controlPoints["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ln0/i;->b0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ln0/i;->b0:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_8
    return v0
.end method

.method public final J(Lq0/a;II)I
    .locals 2

    and-int/lit8 p1, p3, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Ln0/i;->Y:Lo0/l;

    iput-boolean v0, p1, Lo0/l;->m:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ln0/i;->Y:Lo0/l;

    iput-boolean v1, p1, Lo0/l;->m:Z

    :goto_0
    and-int/lit8 p1, p3, 0x10

    if-nez p1, :cond_1

    iget-object p1, p0, Ln0/i;->Y:Lo0/l;

    iput-boolean v0, p1, Lo0/l;->n:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ln0/i;->Y:Lo0/l;

    iput-boolean v1, p1, Lo0/l;->n:Z

    :goto_1
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_2

    iget-object p1, p0, Ln0/i;->Y:Lo0/l;

    iput-boolean v0, p1, Lo0/l;->o:Z

    goto :goto_2

    :cond_2
    iget-object p1, p0, Ln0/i;->Y:Lo0/l;

    iput-boolean v1, p1, Lo0/l;->o:Z

    :goto_2
    and-int/lit8 p1, p3, 0x20

    if-nez p1, :cond_3

    iget-object p1, p0, Ln0/i;->Z:Lo0/i;

    iput-boolean v0, p1, Lo0/i;->j:Z

    goto :goto_3

    :cond_3
    iget-object p1, p0, Ln0/i;->Z:Lo0/i;

    iput-boolean v1, p1, Lo0/i;->j:Z

    :goto_3
    sub-int/2addr p2, p2

    return p2
.end method

.method public K()V
    .locals 4

    iget-object v0, p0, Ln0/i;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ln0/i;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lp0/d;->l(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lp0/p;->b(I)Lp0/d;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lp0/d;->v(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Ln0/i;->Y:Lo0/l;

    iget-object v1, v1, Lo0/l;->e:Lo0/o;

    iget-object v1, v1, Lo0/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ln0/i;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v0, p0, Ln0/i;->e0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lo0/o;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Ln0/i;->e0:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lq0/e;->u(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_4
    iget-object v0, p0, Ln0/i;->e0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-void
.end method

.method public L()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lp0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    iget-object v0, v0, Lo0/o;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final M()I
    .locals 2

    iget v0, p0, Ln0/i;->c0:I

    if-gez v0, :cond_0

    const-string v0, "WCon_ObjectShape"

    const-string v1, "Error: please run getShapeBinary_HintText() first to get correct binary size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Ln0/i;->c0:I

    return v0
.end method

.method public final N()I
    .locals 2

    iget v0, p0, Ln0/i;->d0:I

    if-gez v0, :cond_0

    const-string v0, "WCon_ObjectShape"

    const-string v1, "Error: please run getShapeBinary_HintText() first to get correct binary size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Ln0/i;->d0:I

    return v0
.end method

.method public final O(Lq0/a;I)I
    .locals 4

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lq0/a;->r(II)V

    add-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget-object v2, v2, Lo0/l;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lq0/a;->D(ILjava/lang/String;)V

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    const/16 v0, 0x200

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, p2

    :goto_0
    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget v2, v2, Lo0/l;->h:I

    const/high16 v3, -0x1000000

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v1, v2}, Lq0/a;->u(II)V

    add-int/lit8 v1, v1, 0x4

    or-int/lit16 v0, v0, 0x400

    :cond_1
    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget v2, v2, Lo0/l;->i:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1, v2}, Lq0/a;->t(IF)V

    add-int/lit8 v1, v1, 0x4

    or-int/lit16 v0, v0, 0x800

    :cond_2
    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget v2, v2, Lo0/l;->k:I

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1, v2}, Lq0/a;->q(II)V

    add-int/lit8 v1, v1, 0x1

    const/high16 p1, 0x400000

    or-int/2addr v0, p1

    :cond_3
    sub-int/2addr v1, p2

    iput v1, p0, Ln0/i;->c0:I

    return v0
.end method

.method public final P()B
    .locals 2

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v1}, Lo0/h;->f()Lo0/k;

    move-result-object v1

    invoke-virtual {v1}, Lo0/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_1
    iget-object v1, p0, Ln0/i;->Y:Lo0/l;

    invoke-virtual {v1}, Lo0/l;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    iget-object v1, p0, Ln0/i;->Y:Lo0/l;

    invoke-virtual {v1}, Lo0/l;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    :cond_3
    iget-object v1, p0, Ln0/i;->Y:Lo0/l;

    invoke-virtual {v1}, Lo0/l;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_4
    iget-object v1, p0, Ln0/i;->Z:Lo0/i;

    invoke-virtual {v1}, Lo0/i;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    :cond_5
    return v0
.end method

.method public final Q(Lq0/a;I)I
    .locals 4

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->a:I

    sget-object v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$EllipsisType;->ELLIPSIS_TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$EllipsisType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->a:I

    invoke-virtual {p1, p2, v0}, Lq0/a;->q(II)V

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x1000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v0, p2

    :goto_0
    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget v2, v2, Lo0/l;->b:I

    sget-object v3, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->AUTO_FIT_OPTION_BOTH:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget v2, v2, Lo0/l;->b:I

    invoke-virtual {p1, v0, v2}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    or-int/lit16 v1, v1, 0x2000

    :cond_1
    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget v2, v2, Lo0/l;->c:I

    sget-object v3, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$IMEActionType;->IME_ACTION_TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$IMEActionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget v2, v2, Lo0/l;->c:I

    invoke-virtual {p1, v0, v2}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    or-int/lit16 v1, v1, 0x4000

    :cond_2
    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget v2, v2, Lo0/l;->d:I

    sget-object v3, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextInputType;->INPUT_TYPE_TEXT:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextInputType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget v2, v2, Lo0/l;->d:I

    invoke-virtual {p1, v0, v2}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    const p1, 0x8000

    or-int/2addr v1, p1

    :cond_3
    sub-int/2addr v0, p2

    iput v0, p0, Ln0/i;->d0:I

    return v1
.end method

.method public R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo0/l;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public S(Lq0/a;I)I
    .locals 10

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v2

    add-int/lit8 v1, v1, 0x2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    add-int/2addr v3, v1

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Lq0/a;->b(I)B

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v1

    if-eqz v2, :cond_a

    add-int/2addr p2, v2

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Lq0/a;->k(I)Landroid/graphics/Rect;

    move-result-object v2

    add-int/lit8 p2, p2, 0x10

    iget-object v3, p0, Ln0/i;->Z:Lo0/i;

    iput-object v2, v3, Lo0/i;->a:Landroid/graphics/Rect;

    :cond_1
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v3

    iput v3, v2, Lo0/h;->h:I

    add-int/lit8 p2, p2, 0x4

    :cond_2
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_3

    iget-object v2, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {p1, p2}, Lq0/a;->f(I)F

    move-result v3

    iput v3, v2, Lo0/h;->i:F

    add-int/lit8 p2, p2, 0x4

    :cond_3
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_4

    iget-object v2, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v3

    iput v3, v2, Lo0/h;->j:I

    add-int/lit8 p2, p2, 0x2

    :cond_4
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_5

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v2

    add-int/lit8 p2, p2, 0x4

    if-ltz v2, :cond_5

    iget-object v3, p0, Ln0/i;->Z:Lo0/i;

    iput v2, v3, Lo0/i;->c:I

    iget-object v4, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v4, v2}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lo0/i;->d:Ljava/lang/String;

    :cond_5
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_6

    invoke-virtual {p1, p2}, Lq0/a;->k(I)Landroid/graphics/Rect;

    move-result-object v2

    add-int/lit8 p2, p2, 0x10

    iget-object v3, p0, Ln0/i;->Z:Lo0/i;

    iget v4, v3, Lo0/i;->c:I

    if-ltz v4, :cond_6

    iput-object v2, v3, Lo0/i;->e:Landroid/graphics/Rect;

    :cond_6
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_7

    iget-object v2, p0, Ln0/i;->Z:Lo0/i;

    invoke-virtual {p1, p2}, Lq0/a;->m(I)Landroid/graphics/RectF;

    move-result-object v3

    iput-object v3, v2, Lo0/i;->b:Landroid/graphics/RectF;

    add-int/lit8 p2, p2, 0x10

    :cond_7
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_8

    iget-object v2, p0, Ln0/i;->Z:Lo0/i;

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v3

    iput v3, v2, Lo0/i;->f:I

    add-int/lit8 p2, p2, 0x4

    :cond_8
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    invoke-virtual {p1, p2}, Lq0/a;->l(I)Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object v2

    iget-object v3, p0, Ln0/i;->Z:Lo0/i;

    new-instance v4, Landroid/graphics/Rect;

    iget-wide v5, v2, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    double-to-int v5, v5

    iget-wide v6, v2, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    double-to-int v6, v6

    iget-wide v7, v2, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    double-to-int v7, v7

    iget-wide v8, v2, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    double-to-int v2, v8

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v3, Lo0/i;->l:Landroid/graphics/Rect;

    add-int/lit8 p2, p2, 0x20

    :cond_9
    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result p1

    if-ltz p1, :cond_a

    iget-object p2, p0, Ln0/i;->Z:Lo0/i;

    iput p1, p2, Lo0/i;->h:I

    iget-object v1, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v1, p1}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lo0/i;->i:Ljava/lang/String;

    :cond_a
    return v0
.end method

.method public T(Lq0/a;I)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, 0x6

    add-int/lit8 v3, v3, 0xb

    sub-int v4, v3, v2

    iget-object v5, v0, Ln0/i;->Z:Lo0/i;

    iget-object v5, v5, Lo0/i;->a:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_1

    iget v6, v5, Landroid/graphics/Rect;->right:I

    if-nez v6, :cond_1

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_1

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, v3, v5}, Lq0/a;->z(ILandroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x10

    const/4 v5, 0x2

    :goto_1
    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    iget v6, v6, Lo0/h;->h:I

    if-eqz v6, :cond_2

    invoke-virtual {v1, v3, v6}, Lq0/a;->u(II)V

    add-int/lit8 v3, v3, 0x4

    or-int/lit8 v5, v5, 0x8

    :cond_2
    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    iget v6, v6, Lo0/h;->i:F

    const/4 v9, 0x0

    cmpl-float v10, v6, v9

    if-eqz v10, :cond_3

    invoke-virtual {v1, v3, v6}, Lq0/a;->t(IF)V

    add-int/lit8 v3, v3, 0x4

    or-int/lit8 v5, v5, 0x10

    :cond_3
    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    iget v6, v6, Lo0/h;->j:I

    sget-object v10, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$BorderType;->BORDER_TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$BorderType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eq v6, v10, :cond_4

    iget-object v6, v0, Ln0/i;->W:Lo0/h;

    iget v6, v6, Lo0/h;->j:I

    invoke-virtual {v1, v3, v6}, Lq0/a;->r(II)V

    add-int/lit8 v3, v3, 0x2

    or-int/lit8 v5, v5, 0x20

    :cond_4
    iget-object v6, v0, Ln0/i;->Z:Lo0/i;

    iget-object v10, v6, Lo0/i;->d:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v11, v0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v11, v10}, Lk0/a;->e(Ljava/lang/String;)I

    move-result v10

    iput v10, v6, Lo0/i;->c:I

    iget-object v6, v0, Ln0/i;->Z:Lo0/i;

    iget v6, v6, Lo0/i;->c:I

    invoke-virtual {v1, v3, v6}, Lq0/a;->u(II)V

    add-int/lit8 v3, v3, 0x4

    or-int/lit16 v5, v5, 0x200

    :cond_5
    iget-object v6, v0, Ln0/i;->Z:Lo0/i;

    iget-object v6, v6, Lo0/i;->e:Landroid/graphics/Rect;

    if-eqz v6, :cond_7

    iget v10, v6, Landroid/graphics/Rect;->left:I

    if-nez v10, :cond_6

    iget v10, v6, Landroid/graphics/Rect;->right:I

    if-nez v10, :cond_6

    iget v10, v6, Landroid/graphics/Rect;->top:I

    if-nez v10, :cond_6

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    if-eqz v10, :cond_7

    :cond_6
    invoke-virtual {v1, v3, v6}, Lq0/a;->z(ILandroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x10

    or-int/lit16 v5, v5, 0x400

    :cond_7
    iget-object v6, v0, Ln0/i;->Z:Lo0/i;

    iget-object v6, v6, Lo0/i;->b:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v9

    if-nez v10, :cond_8

    iget v10, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v9

    if-nez v10, :cond_8

    iget v10, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v10, v10, v9

    if-nez v10, :cond_8

    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v10, v9

    if-eqz v9, :cond_9

    :cond_8
    invoke-virtual {v1, v3, v6}, Lq0/a;->B(ILandroid/graphics/RectF;)V

    add-int/lit8 v3, v3, 0x10

    or-int/lit16 v5, v5, 0x800

    :cond_9
    iget-object v6, v0, Ln0/i;->Z:Lo0/i;

    iget v6, v6, Lo0/i;->f:I

    if-eqz v6, :cond_a

    invoke-virtual {v1, v3, v6}, Lq0/a;->u(II)V

    add-int/lit8 v3, v3, 0x4

    or-int/lit16 v5, v5, 0x1000

    :cond_a
    iget-object v6, v0, Ln0/i;->Z:Lo0/i;

    iget-object v6, v6, Lo0/i;->l:Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    if-nez v9, :cond_b

    iget v10, v6, Landroid/graphics/Rect;->right:I

    if-nez v10, :cond_b

    iget v10, v6, Landroid/graphics/Rect;->top:I

    if-nez v10, :cond_b

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    if-eqz v10, :cond_c

    :cond_b
    new-instance v10, Lcom/samsung/android/sdk/pen/base/SpenRectD;

    int-to-double v12, v9

    iget v9, v6, Landroid/graphics/Rect;->top:I

    int-to-double v14, v9

    iget v9, v6, Landroid/graphics/Rect;->right:I

    int-to-double v8, v9

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move-wide/from16 v16, v8

    int-to-double v7, v6

    move-object v11, v10

    move-wide/from16 v18, v7

    invoke-direct/range {v11 .. v19}, Lcom/samsung/android/sdk/pen/base/SpenRectD;-><init>(DDDD)V

    invoke-virtual {v1, v3, v10}, Lq0/a;->A(ILcom/samsung/android/sdk/pen/base/SpenRectD;)V

    add-int/lit8 v3, v3, 0x20

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    :cond_c
    iget-object v6, v0, Ln0/i;->Z:Lo0/i;

    iget-object v7, v6, Lo0/i;->i:Ljava/lang/String;

    if-eqz v7, :cond_d

    iget-object v8, v0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v8, v7}, Lk0/a;->e(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lo0/i;->h:I

    iget-object v6, v0, Ln0/i;->Z:Lo0/i;

    iget v6, v6, Lo0/i;->h:I

    invoke-virtual {v1, v3, v6}, Lq0/a;->u(II)V

    add-int/lit8 v3, v3, 0x4

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    :cond_d
    sub-int/2addr v3, v2

    if-nez v5, :cond_e

    const/4 v4, 0x0

    :cond_e
    invoke-virtual {v1, v2, v3}, Lq0/a;->u(II)V

    const/4 v3, 0x4

    add-int/2addr v2, v3

    const/4 v6, 0x3

    invoke-virtual {v1, v2, v6}, Lq0/a;->r(II)V

    const/4 v6, 0x2

    add-int/2addr v2, v6

    invoke-virtual {v1, v2, v4}, Lq0/a;->u(II)V

    add-int/2addr v2, v3

    add-int/lit8 v4, v2, 0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Lq0/a;->q(II)V

    add-int/lit8 v2, v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lq0/a;->q(II)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v2, v3}, Lq0/a;->q(II)V

    invoke-virtual {v1, v4, v5}, Lq0/a;->u(II)V

    return v6
.end method

.method public U()I
    .locals 6

    iget-object v0, p0, Ln0/i;->Z:Lo0/i;

    iget-object v1, v0, Lo0/i;->a:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x21

    :goto_1
    iget-object v2, p0, Ln0/i;->W:Lo0/h;

    iget v3, v2, Lo0/h;->h:I

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x4

    :cond_2
    iget v3, v2, Lo0/h;->i:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x4

    :cond_3
    iget v2, v2, Lo0/h;->j:I

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x2

    :cond_4
    iget v2, v0, Lo0/i;->c:I

    if-ltz v2, :cond_5

    add-int/lit8 v1, v1, 0x4

    :cond_5
    iget-object v3, v0, Lo0/i;->e:Landroid/graphics/Rect;

    if-eqz v3, :cond_7

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-nez v5, :cond_6

    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-nez v5, :cond_6

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v3, :cond_7

    :cond_6
    add-int/lit8 v1, v1, 0x10

    :cond_7
    iget-object v3, v0, Lo0/i;->b:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_8

    iget v5, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_8

    iget v5, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_8

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    :cond_8
    add-int/lit8 v1, v1, 0x10

    :cond_9
    const/4 v3, 0x0

    if-ltz v2, :cond_a

    iget v3, v0, Lo0/i;->f:I

    :cond_a
    if-eqz v3, :cond_b

    add-int/lit8 v1, v1, 0x4

    :cond_b
    iget-object v2, v0, Lo0/i;->l:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-nez v3, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_c

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_d

    :cond_c
    add-int/lit8 v1, v1, 0x20

    :cond_d
    iget v0, v0, Lo0/i;->h:I

    if-ltz v0, :cond_e

    add-int/lit8 v1, v1, 0x4

    :cond_e
    return v1
.end method

.method public V(Lq0/a;I)I
    .locals 6

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v2

    const/4 v3, 0x2

    add-int/2addr v1, v3

    if-eq v2, v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ApplyTextboxOwnBinary() - Invalid data type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WCon_ObjectShape"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    add-int/2addr v4, v1

    const/4 v1, 0x0

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4}, Lq0/a;->b(I)B

    move-result v4

    if-le v4, v3, :cond_1

    :goto_0
    invoke-virtual {p1, v5}, Lq0/a;->c(I)S

    move-result v1

    goto :goto_1

    :cond_1
    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v4, v3, :cond_3

    invoke-virtual {p1, v5}, Lq0/a;->b(I)B

    move-result v1

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    add-int/2addr p2, v2

    iget-object v2, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v2, p1, p2, v1}, Lo0/h;->c(Lq0/a;II)I

    :cond_4
    return v0
.end method

.method public W(Lq0/a;I)Z
    .locals 7

    add-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, 0x9

    sub-int v1, v0, p2

    iget-object v2, p0, Ln0/i;->W:Lo0/h;

    iget v2, v2, Lo0/h;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v2}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    int-to-short v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, p0, Ln0/i;->W:Lo0/h;

    iget v5, v5, Lo0/h;->i:F

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v0, v5}, Lq0/a;->t(IF)V

    add-int/lit8 v0, v0, 0x4

    or-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    :cond_1
    iget-object v5, p0, Ln0/i;->W:Lo0/h;

    iget v5, v5, Lo0/h;->j:I

    if-eqz v5, :cond_2

    invoke-virtual {p1, v0, v5}, Lq0/a;->r(II)V

    add-int/lit8 v0, v0, 0x2

    or-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    :cond_2
    sub-int/2addr v0, p2

    if-nez v2, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2, v4}, Lq0/a;->r(II)V

    add-int/2addr p2, v4

    invoke-virtual {p1, p2, v1}, Lq0/a;->u(II)V

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lq0/a;->q(II)V

    add-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, v0, v3}, Lq0/a;->q(II)V

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2, v4}, Lq0/a;->q(II)V

    invoke-virtual {p1, v0, v2}, Lq0/a;->s(IS)V

    return v1
.end method

.method public X()I
    .locals 4

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    iget v1, v0, Lo0/h;->h:I

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    :goto_0
    iget v2, v0, Lo0/h;->i:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x4

    :cond_1
    iget v0, v0, Lo0/h;->j:I

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    return v1
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/i;->f(Le1/o;)V

    invoke-virtual {p0, p1}, Ln0/i;->g(Le1/o;)V

    return-void
.end method

.method public f(Le1/o;)V
    .locals 3

    invoke-super {p0, p1}, Ln0/j;->f(Le1/o;)V

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->c()Z

    move-result v0

    const-string v1, "isHorizontalFlipped"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->d()Z

    move-result v0

    const-string v1, "isVerticalFlipped"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-boolean v0, v0, Lo0/l;->m:Z

    const-string v1, "isHintTextVisible"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-boolean v0, v0, Lo0/l;->n:Z

    const-string v1, "isTextReadOnly"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-boolean v0, v0, Lo0/l;->o:Z

    const-string v1, "isTextEditable"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-object v0, p0, Ln0/i;->Z:Lo0/i;

    iget-boolean v0, v0, Lo0/i;->j:Z

    const-string v1, "isTransparency"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    iget v0, v0, Lo0/h;->a:I

    const-string v1, "shapeType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    iget v0, v0, Lo0/h;->n:F

    const-string v1, "originalDegree"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    if-eqz v0, :cond_0

    iget v0, v0, Lo0/o;->e:F

    const-string v1, "leftMargin"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    iget v0, v0, Lo0/o;->f:F

    const-string/jumbo v1, "topMargin"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    iget v0, v0, Lo0/o;->g:F

    const-string v1, "rightMargin"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    iget v0, v0, Lo0/o;->h:F

    const-string v1, "bottomMargin"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    iget-byte v0, v0, Lo0/o;->i:B

    const-string/jumbo v1, "textGravity"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->f:I

    sget-object v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextAreaType;->TEXT_AREA_TYPE_MARGIN:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextAreaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->f:I

    const-string/jumbo v1, "textAreaType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Ln0/i;->X:Lo0/j;

    iget v0, v0, Lo0/j;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const-string v2, "penName"

    invoke-virtual {p1, v2, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Ln0/i;->X:Lo0/j;

    iget v0, v0, Lo0/j;->b:I

    if-eq v0, v1, :cond_3

    const-string v2, "defaultPenName"

    invoke-virtual {p1, v2, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Ln0/i;->X:Lo0/j;

    iget v0, v0, Lo0/j;->c:I

    if-eq v0, v1, :cond_4

    const-string v1, "penStyle"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "hintText"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->h:I

    const/high16 v1, -0x1000000

    if-eq v0, v1, :cond_6

    const-string v1, "hintTextColor"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->i:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_7

    const-string v1, "hintTextFontSize"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    :cond_7
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->k:I

    if-eqz v0, :cond_8

    const-string v1, "hintTextStyle"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->a:I

    sget-object v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$EllipsisType;->ELLIPSIS_TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$EllipsisType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->a:I

    const-string v1, "ellipsisType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_9
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->b:I

    sget-object v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->AUTO_FIT_OPTION_BOTH:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->b:I

    const-string/jumbo v1, "textAutoFit"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_a
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->c:I

    sget-object v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$IMEActionType;->IME_ACTION_TYPE_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$IMEActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->c:I

    const-string v1, "imeActionType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_b
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->d:I

    sget-object v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextInputType;->INPUT_TYPE_TEXT:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$TextInputType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->d:I

    const-string/jumbo v1, "textInputType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_c
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget v0, v0, Lo0/l;->j:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_d

    const-string v1, "hintTextVerticalOffset"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    :cond_d
    return-void
.end method

.method public g(Le1/o;)V
    .locals 6

    invoke-super {p0, p1}, Ln0/j;->g(Le1/o;)V

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    iget-object v0, v0, Lo0/h;->m:Landroid/graphics/RectF;

    const-string v1, "originalRect"

    invoke-virtual {p1, v1, v0}, Le1/o;->v(Ljava/lang/String;Landroid/graphics/RectF;)V

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->b()Lo0/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->b()Lo0/m;

    move-result-object v0

    iget-object v0, v0, Lo0/m;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->b()Lo0/m;

    move-result-object v0

    iget-object v0, v0, Lo0/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->b()Lo0/m;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {p1, v1, v0}, Le1/o;->l(Ljava/lang/String;Lm0/d;)V

    :cond_0
    iget-object v0, p0, Ln0/i;->b0:Ljava/util/ArrayList;

    const-string v1, "controlPointList"

    const-string v2, "controlPoint"

    invoke-virtual {p1, v1, v2, v0}, Le1/o;->r(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    iget-object v0, v0, Lo0/h;->l:Landroid/graphics/RectF;

    const-string v1, "drawnRect"

    invoke-virtual {p1, v1, v0}, Le1/o;->v(Ljava/lang/String;Landroid/graphics/RectF;)V

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lo0/o;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lo0/o;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    iget-object v0, v0, Lo0/o;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lq0/e;->m(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "spanOrderDataList"

    const-string v2, "spanOrderData"

    invoke-virtual {p1, v1, v2, v0}, Le1/o;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget-object v2, v2, Lo0/l;->e:Lo0/o;

    iget-object v2, v2, Lo0/o;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget-object v2, v2, Lo0/l;->e:Lo0/o;

    iget-object v2, v2, Lo0/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp0/d;

    invoke-virtual {v3}, Lp0/d;->start()I

    move-result v4

    invoke-virtual {v3}, Lp0/d;->d()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lp0/d;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "zeroLengthSpanList"

    const-string/jumbo v3, "zeroLengthSpan"

    invoke-virtual {p1, v2, v3, v0}, Le1/o;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    new-instance v0, Lq0/e$d;

    invoke-direct {v0}, Lq0/e$d;-><init>()V

    iget-object v2, p0, Ln0/i;->Y:Lo0/l;

    iget-object v2, v2, Lo0/l;->e:Lo0/o;

    iget-object v3, v2, Lo0/o;->a:Ljava/lang/String;

    iput-object v3, v0, Lq0/e$d;->a:Ljava/lang/String;

    iput-object v1, v0, Lq0/e$d;->b:Ljava/util/ArrayList;

    iget-object v1, v2, Lo0/o;->c:Ljava/util/ArrayList;

    iput-object v1, v0, Lq0/e$d;->c:Ljava/util/ArrayList;

    iget-object v1, v2, Lo0/o;->j:Ljava/util/ArrayList;

    iput-object v1, v0, Lq0/e$d;->d:Ljava/util/ArrayList;

    iget-object v1, v2, Lo0/o;->d:Ljava/util/ArrayList;

    iput-object v1, v0, Lq0/e$d;->e:Ljava/util/ArrayList;

    new-instance v1, Lq0/e;

    invoke-direct {v1}, Lq0/e;-><init>()V

    invoke-virtual {v1, v0}, Lq0/e;->x(Lq0/e$d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {p1, v1, v0}, Le1/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->d()Lo0/c;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->d()Lo0/c;

    move-result-object v0

    const-string v1, "fillEffect"

    invoke-virtual {p1, v1, v0}, Le1/o;->l(Ljava/lang/String;Lm0/d;)V

    :cond_6
    return-void
.end method

.method public v(Lq0/a;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ln0/j;->v(Lq0/a;II)I

    move-result p3

    const-string v0, "WCon_ObjectShape"

    if-gez p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectShapeBase::NewApplyBinary() fail. baseSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_0
    add-int/2addr p2, p3

    invoke-direct {p0, p1, p2}, Ln0/i;->c(Lq0/a;I)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ObjectShape::NewApplyBinary() fail to apply own binary. "

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

    invoke-super {p0, p1, p2}, Ln0/j;->w(Lq0/a;I)I

    move-result v0

    const-string v1, "WCon_ObjectShape"

    if-gez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectShapeBase newGetBinary() fail. err = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-super {p0}, Ln0/j;->x()I

    move-result v2

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2}, Ln0/i;->n(Lq0/a;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ObjectShape newGetBinary() fail to get own binary. err"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_1
    return v0
.end method

.method public x()I
    .locals 2

    invoke-super {p0}, Ln0/j;->x()I

    move-result v0

    invoke-direct {p0}, Ln0/i;->o()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isHorizontalFlipped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lo0/k;->e(Z)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "isVerticalFlipped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lo0/k;->f(Z)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "isHintTextVisible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lo0/l;->m:Z

    goto/16 :goto_0

    :cond_2
    const-string v1, "isTextReadOnly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lo0/l;->n:Z

    goto/16 :goto_0

    :cond_3
    const-string v1, "isTextEditable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lo0/l;->o:Z

    goto/16 :goto_0

    :cond_4
    const-string v1, "isTransparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Ln0/i;->Z:Lo0/i;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lo0/i;->j:Z

    goto/16 :goto_0

    :cond_5
    const-string v1, "shapeType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lo0/h;->a:I

    goto/16 :goto_0

    :cond_6
    const-string v1, "originalDegree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lo0/h;->n:F

    goto/16 :goto_0

    :cond_7
    const-string v1, "leftMargin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v1, v0, Lo0/l;->e:Lo0/o;

    if-nez v1, :cond_8

    new-instance v1, Lo0/o;

    invoke-direct {v1}, Lo0/o;-><init>()V

    iput-object v1, v0, Lo0/l;->e:Lo0/o;

    :cond_8
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lo0/o;->e:F

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "topMargin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v1, v0, Lo0/l;->e:Lo0/o;

    if-nez v1, :cond_a

    new-instance v1, Lo0/o;

    invoke-direct {v1}, Lo0/o;-><init>()V

    iput-object v1, v0, Lo0/l;->e:Lo0/o;

    :cond_a
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lo0/o;->f:F

    goto/16 :goto_0

    :cond_b
    const-string v1, "rightMargin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v1, v0, Lo0/l;->e:Lo0/o;

    if-nez v1, :cond_c

    new-instance v1, Lo0/o;

    invoke-direct {v1}, Lo0/o;-><init>()V

    iput-object v1, v0, Lo0/l;->e:Lo0/o;

    :cond_c
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lo0/o;->g:F

    goto/16 :goto_0

    :cond_d
    const-string v1, "bottomMargin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v1, v0, Lo0/l;->e:Lo0/o;

    if-nez v1, :cond_e

    new-instance v1, Lo0/o;

    invoke-direct {v1}, Lo0/o;-><init>()V

    iput-object v1, v0, Lo0/l;->e:Lo0/o;

    :cond_e
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lo0/o;->h:F

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "textGravity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v1, v0, Lo0/l;->e:Lo0/o;

    if-nez v1, :cond_10

    new-instance v1, Lo0/o;

    invoke-direct {v1}, Lo0/o;-><init>()V

    iput-object v1, v0, Lo0/l;->e:Lo0/o;

    :cond_10
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, v0, Lo0/o;->i:B

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v1, "textAreaType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput p1, v0, Lo0/l;->f:I

    goto/16 :goto_0

    :cond_12
    const-string v1, "penName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Ln0/i;->X:Lo0/j;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lo0/j;->a:I

    goto/16 :goto_0

    :cond_13
    const-string v1, "defaultPenName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v0, p0, Ln0/i;->X:Lo0/j;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lo0/j;->b:I

    goto/16 :goto_0

    :cond_14
    const-string v1, "penStyle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Ln0/i;->X:Lo0/j;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lo0/j;->c:I

    goto/16 :goto_0

    :cond_15
    const-string v1, "hintText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lo0/l;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_16
    const-string v1, "hintTextColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, v0, Lo0/l;->h:I

    goto/16 :goto_0

    :cond_17
    const-string v1, "hintTextFontSize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lo0/l;->i:F

    goto/16 :goto_0

    :cond_18
    const-string v1, "hintTextStyle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput p1, v0, Lo0/l;->k:I

    goto :goto_0

    :cond_19
    const-string v1, "ellipsisType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lo0/l;->a:I

    goto :goto_0

    :cond_1a
    const-string/jumbo v1, "textAutoFit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lo0/l;->b:I

    goto :goto_0

    :cond_1b
    const-string v1, "imeActionType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lo0/l;->c:I

    goto :goto_0

    :cond_1c
    const-string/jumbo v1, "textInputType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lo0/l;->d:I

    goto :goto_0

    :cond_1d
    const-string v1, "hintTextVerticalOffset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lo0/l;->j:F

    goto :goto_0

    :cond_1e
    invoke-super {p0, p1, p2}, Ln0/j;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "originalRect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-static {p1}, Lq0/d;->j(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, v0, Lo0/h;->m:Landroid/graphics/RectF;

    goto/16 :goto_6

    :cond_0
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->b()Lo0/m;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->a()V

    :cond_1
    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-virtual {v0}, Lo0/h;->f()Lo0/k;

    move-result-object v0

    invoke-virtual {v0}, Lo0/k;->b()Lo0/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo0/m;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    :cond_2
    const-string v2, "controlPointList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v3, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln0/i;->b0:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_0
    if-ne v0, v5, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Ln0/i;->b0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Ln0/i;->a0:B

    goto/16 :goto_6

    :cond_4
    :goto_1
    iget-object v0, p0, Ln0/i;->b0:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->g(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_0

    :cond_5
    const-string v2, "drawnRect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Ln0/i;->W:Lo0/h;

    invoke-static {p1}, Lq0/d;->j(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, v0, Lo0/h;->l:Landroid/graphics/RectF;

    goto/16 :goto_6

    :cond_6
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p1}, Lq0/d;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lq0/e;

    invoke-direct {v0}, Lq0/e;-><init>()V

    invoke-virtual {v0, p1}, Lq0/e;->w(Ljava/lang/String;)Lq0/e$d;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v1, v0, Lo0/l;->e:Lo0/o;

    if-nez v1, :cond_7

    new-instance v1, Lo0/o;

    invoke-direct {v1}, Lo0/o;-><init>()V

    iput-object v1, v0, Lo0/l;->e:Lo0/o;

    :cond_7
    iget-object v0, p0, Ln0/i;->Y:Lo0/l;

    iget-object v0, v0, Lo0/l;->e:Lo0/o;

    iget-object v1, p1, Lq0/e$d;->a:Ljava/lang/String;

    iput-object v1, v0, Lo0/o;->a:Ljava/lang/String;

    iget-object v1, p1, Lq0/e$d;->b:Ljava/util/ArrayList;

    iput-object v1, v0, Lo0/o;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lq0/e$d;->c:Ljava/util/ArrayList;

    iput-object v1, v0, Lo0/o;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lq0/e$d;->d:Ljava/util/ArrayList;

    iput-object v1, v0, Lo0/o;->j:Ljava/util/ArrayList;

    iget-object p1, p1, Lq0/e$d;->e:Ljava/util/ArrayList;

    iput-object p1, v0, Lo0/o;->d:Ljava/util/ArrayList;

    goto/16 :goto_6

    :cond_8
    const-string p1, "WCon_ObjectShape"

    const-string v0, "parseElement() : rtData is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_9
    const-string v2, "spanOrderDataList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_2
    if-ne v0, v5, :cond_a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_a
    invoke-static {p1}, Lq0/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget-object v1, p0, Ln0/i;->e0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_2

    :cond_c
    const-string/jumbo v2, "zeroLengthSpanList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_3
    if-ne v0, v5, :cond_d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_d
    iget-object v0, p0, Ln0/i;->f0:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_3

    :cond_e
    const-string v0, "fillEffect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "type"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    :goto_5
    iget-object v1, p0, Ln0/a;->O:Lk0/b;

    invoke-static {v0, v1}, Lo0/c;->f(Ljava/lang/String;Lk0/b;)Lo0/c;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Lo0/c;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    iget p1, v0, Lo0/c;->a:I

    if-ne p1, v4, :cond_11

    iget-object p1, p0, Ln0/i;->W:Lo0/h;

    iget-object v1, p1, Lo0/h;->d:Lo0/b;

    if-nez v1, :cond_15

    check-cast v0, Lo0/b;

    iput-object v0, p1, Lo0/h;->d:Lo0/b;

    goto :goto_6

    :cond_11
    const/4 v1, 0x2

    if-ne p1, v1, :cond_12

    iget-object p1, p0, Ln0/i;->W:Lo0/h;

    iget-object v1, p1, Lo0/h;->e:Lo0/d;

    if-nez v1, :cond_15

    check-cast v0, Lo0/d;

    iput-object v0, p1, Lo0/h;->e:Lo0/d;

    goto :goto_6

    :cond_12
    if-ne p1, v5, :cond_13

    iget-object p1, p0, Ln0/i;->W:Lo0/h;

    iget-object v1, p1, Lo0/h;->f:Lo0/e;

    if-nez v1, :cond_15

    check-cast v0, Lo0/e;

    iput-object v0, p1, Lo0/h;->f:Lo0/e;

    goto :goto_6

    :cond_13
    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    iget-object p1, p0, Ln0/i;->W:Lo0/h;

    iget-object v1, p1, Lo0/h;->c:Lo0/a;

    if-nez v1, :cond_15

    check-cast v0, Lo0/a;

    iput-object v0, p1, Lo0/h;->c:Lo0/a;

    goto :goto_6

    :cond_14
    invoke-super {p0, p1}, Ln0/j;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_15
    :goto_6
    return-void
.end method
