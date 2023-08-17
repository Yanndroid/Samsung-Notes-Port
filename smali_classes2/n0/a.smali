.class public Ln0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Lm0/c;
.implements Lm0/b;
.implements Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;


# instance fields
.field public A:Ljava/lang/String;

.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:J

.field public G:Lo0/t;

.field public H:J

.field public I:J

.field public J:J

.field public K:I

.field public L:Z

.field public M:[B

.field public N:Z

.field public O:Lk0/b;

.field public P:Lk0/a;

.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Landroid/graphics/RectF;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:F

.field public u:I

.field public v:Ljava/lang/String;

.field public w:Lo0/p;

.field public x:Ljava/lang/String;

.field public y:Lo0/p;

.field public z:I


# direct methods
.method public constructor <init>(ILk0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ln0/a;->m:I

    iput-boolean v0, p0, Ln0/a;->N:Z

    iput p1, p0, Ln0/a;->a:I

    iput-object p2, p0, Ln0/a;->O:Lk0/b;

    iget-object p1, p2, Lk0/b;->b:Lk0/a;

    iput-object p1, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {p0}, Ln0/a;->s()V

    return-void
.end method

.method public static i(I)Ljava/lang/String;
    .locals 2

    const-string v0, "stroke"

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xf

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string/jumbo p0, "textBox"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "image"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "container"

    return-object p0

    :cond_4
    const/4 v0, 0x7

    if-ne p0, v0, :cond_5

    const-string p0, "shape"

    return-object p0

    :cond_5
    const/16 v0, 0x8

    if-ne p0, v0, :cond_6

    const-string p0, "line"

    return-object p0

    :cond_6
    const/16 v0, 0xa

    if-ne p0, v0, :cond_7

    const-string/jumbo p0, "voice"

    return-object p0

    :cond_7
    const/16 v0, 0xb

    if-ne p0, v0, :cond_8

    const-string p0, "formula"

    return-object p0

    :cond_8
    const/16 v0, 0xc

    if-ne p0, v0, :cond_9

    const-string p0, "table"

    return-object p0

    :cond_9
    const/16 v0, 0xd

    if-ne p0, v0, :cond_a

    const-string/jumbo p0, "web"

    return-object p0

    :cond_a
    const/16 v0, 0xe

    if-ne p0, v0, :cond_b

    const-string p0, "painting"

    return-object p0

    :cond_b
    const/16 v0, 0x11

    if-ne p0, v0, :cond_c

    const-string p0, "link"

    return-object p0

    :cond_c
    const-string p0, "none"

    return-object p0
.end method


# virtual methods
.method public A(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method public final B(Ljava/io/RandomAccessFile;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {p0, p1}, Ln0/a;->u(Ljava/io/RandomAccessFile;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, p0, Ln0/a;->b:I

    invoke-static {p1}, Lq0/b;->t(Ljava/io/RandomAccessFile;)Landroid/graphics/RectF;

    move-result-object v3

    iput-object v3, p0, Ln0/a;->n:Landroid/graphics/RectF;

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, p0, Ln0/a;->o:I

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result v3

    iput v3, p0, Ln0/a;->p:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, p0, Ln0/a;->q:I

    if-eqz v2, :cond_0

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, p1}, Ln0/a;->C(Ljava/io/RandomAccessFile;)V

    :cond_0
    invoke-virtual {p0}, Ln0/a;->F()V

    return-void
.end method

.method public final C(Ljava/io/RandomAccessFile;)V
    .locals 5

    iget v0, p0, Ln0/a;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v0

    iput v0, p0, Ln0/a;->t:F

    goto :goto_0

    :cond_0
    iput v1, p0, Ln0/a;->t:F

    :goto_0
    iget v0, p0, Ln0/a;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln0/a;->v:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object v2, p0, Ln0/a;->v:Ljava/lang/String;

    :goto_1
    iget v0, p0, Ln0/a;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln0/a;->w:Lo0/p;

    invoke-virtual {v0, p1}, Lo0/p;->c(Ljava/io/RandomAccessFile;)V

    :cond_2
    iget v0, p0, Ln0/a;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln0/a;->x:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object v2, p0, Ln0/a;->x:Ljava/lang/String;

    :goto_2
    iget v0, p0, Ln0/a;->b:I

    and-int/lit8 v0, v0, 0x20

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Ln0/a;->y:Lo0/p;

    invoke-virtual {v0, p1}, Lo0/p;->c(Ljava/io/RandomAccessFile;)V

    iget v0, p0, Ln0/a;->q:I

    if-ne v0, v2, :cond_4

    const-string v0, "SPEN_SDK_RESERVED_KEY_RUNTIME_HANDLE\u0000"

    iget-object v3, p0, Ln0/a;->y:Lo0/p;

    invoke-virtual {v3, v0}, Lo0/p;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Ln0/a;->y:Lo0/p;

    invoke-virtual {v3, v0}, Lo0/p;->i(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ln0/a;->q:I

    :cond_4
    iget v0, p0, Ln0/a;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ln0/a;->z:I

    goto :goto_3

    :cond_5
    iput v2, p0, Ln0/a;->z:I

    :goto_3
    iget v0, p0, Ln0/a;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    invoke-static {p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v0

    iput v0, p0, Ln0/a;->B:F

    invoke-static {p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v0

    iput v0, p0, Ln0/a;->C:F

    goto :goto_4

    :cond_6
    iput v1, p0, Ln0/a;->B:F

    iput v1, p0, Ln0/a;->C:F

    :goto_4
    iget v0, p0, Ln0/a;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    invoke-static {p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v0

    iput v0, p0, Ln0/a;->E:F

    invoke-static {p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v0

    iput v0, p0, Ln0/a;->D:F

    goto :goto_5

    :cond_7
    iput v1, p0, Ln0/a;->E:F

    iput v1, p0, Ln0/a;->D:F

    :goto_5
    iget v0, p0, Ln0/a;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    iput-wide v0, p0, Ln0/a;->F:J

    :cond_8
    new-instance v0, Lo0/t;

    invoke-direct {v0}, Lo0/t;-><init>()V

    iput-object v0, p0, Ln0/a;->G:Lo0/t;

    iget v1, p0, Ln0/a;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    invoke-virtual {v0, p1}, Lo0/t;->e(Ljava/io/RandomAccessFile;)V

    :cond_9
    iget v0, p0, Ln0/a;->b:I

    and-int/lit16 v0, v0, 0x1000

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v3

    iput-wide v3, p0, Ln0/a;->I:J

    goto :goto_6

    :cond_a
    iput-wide v1, p0, Ln0/a;->I:J

    :goto_6
    iget v0, p0, Ln0/a;->b:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    iput-wide v0, p0, Ln0/a;->J:J

    goto :goto_7

    :cond_b
    iput-wide v1, p0, Ln0/a;->J:J

    :goto_7
    iget v0, p0, Ln0/a;->b:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ln0/a;->r:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ln0/a;->s:I

    goto :goto_8

    :cond_c
    iput v1, p0, Ln0/a;->r:I

    iput v1, p0, Ln0/a;->s:I

    :goto_8
    iget v0, p0, Ln0/a;->b:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result p1

    iput p1, p0, Ln0/a;->K:I

    goto :goto_9

    :cond_d
    iput v1, p0, Ln0/a;->K:I

    :goto_9
    return-void
.end method

.method public D(Ljava/io/RandomAccessFile;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/a;->B(Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln0/a;->N:Z

    return-void
.end method

.method public F()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ln0/a;->I:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/s;->e(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ln0/a;->M:[B

    return-void
.end method

.method public IsSame(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ln0/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ln0/a;

    const-string v0, "WCon_ObjectBase"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;->compare(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;Lk0/d;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Le1/o;)V
    .locals 0

    return-void
.end method

.method public final c(Lq0/a;I)I
    .locals 11

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v1}, Lq0/a;->c(I)S

    move-result v2

    add-int/lit8 v1, v1, 0x2

    const-string v3, "]"

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Lq0/a;->e(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, p1, v1}, Ln0/a;->e(Lq0/a;I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Lq0/a;->b(I)B

    move-result v1

    invoke-virtual {p1, v4}, Lq0/a;->e(I)I

    move-result v5

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Lq0/a;->e(I)I

    move-result v1

    iput v1, p0, Ln0/a;->m:I

    add-int/lit8 v4, v4, 0x4

    const/16 v6, 0xfa0

    if-le v1, v6, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ApplyOwnBinary() - unknown format version = ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Ln0/a;->m:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WCon_ObjectBase"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Ln0/a;->m:I

    :cond_0
    iget-object v1, p0, Ln0/a;->G:Lo0/t;

    invoke-virtual {v1, p1, v4}, Lo0/t;->a(Lq0/a;I)I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Lq0/a;->g(I)J

    move-result-wide v6

    iput-wide v6, p0, Ln0/a;->I:J

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {p1, v4}, Lq0/a;->l(I)Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object v1

    new-instance v3, Landroid/graphics/RectF;

    iget-wide v6, v1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    double-to-float v6, v6

    iget-wide v7, v1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    double-to-float v7, v7

    iget-wide v8, v1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    double-to-float v8, v8

    iget-wide v9, v1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    double-to-float v1, v9

    invoke-direct {v3, v6, v7, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Ln0/a;->n:Landroid/graphics/RectF;

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {p1, v4}, Lq0/a;->e(I)I

    move-result v1

    iput v1, p0, Ln0/a;->o:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v4}, Lq0/a;->b(I)B

    move-result v1

    iput v1, p0, Ln0/a;->p:I

    if-eqz v2, :cond_1

    add-int/2addr p2, v2

    invoke-virtual {p0, p1, p2, v5}, Ln0/a;->d(Lq0/a;II)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0}, Ln0/a;->F()V

    return v0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ApplyOwnBinary() - Invalid data type ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public collectVariables()Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ln0/a;->a:I

    const-string/jumbo v3, "type"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Ln0/a$a;

    iget v2, p0, Ln0/a;->m:I

    const-string v3, "loadFormatVersion"

    invoke-direct {v1, p0, v3, v2}, Ln0/a$a;-><init>(Ln0/a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->c:Z

    const-string v3, "rotatable"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->d:Z

    const-string v3, "selectable"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->e:Z

    const-string v3, "movable"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->f:Z

    const-string v3, "flippable"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->k:Z

    const-string v3, "haveBeenToAtt"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->g:Z

    const-string/jumbo v3, "visible"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->h:Z

    const-string v3, "isReplayable"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->i:Z

    const-string v3, "clippable"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->j:Z

    const-string v3, "isTemplateObject"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;

    iget-object v2, p0, Ln0/a;->n:Landroid/graphics/RectF;

    const-string v3, "rect"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;-><init>(Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ln0/a;->o:I

    const-string/jumbo v3, "timeStamp"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ln0/a;->p:I

    const-string v3, "resizable"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;

    iget v2, p0, Ln0/a;->t:F

    const-string v3, "rotationDegree"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v2, p0, Ln0/a;->v:Ljava/lang/String;

    const-string v3, "aoInfo"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;

    iget-object v2, p0, Ln0/a;->w:Lo0/p;

    const-string v3, "sorBundle"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v2, p0, Ln0/a;->x:Ljava/lang/String;

    const-string v3, "plugInLink"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;

    iget-object v2, p0, Ln0/a;->y:Lo0/p;

    const-string v3, "extraBundle"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ln0/a;->z:I

    const-string v3, "attachedFileId"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v2, p0, Ln0/a;->A:Ljava/lang/String;

    const-string v3, "attachedFileHash"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;

    iget v2, p0, Ln0/a;->B:F

    const-string v3, "minWidth"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;

    iget v2, p0, Ln0/a;->C:F

    const-string v3, "minHeight"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;

    iget v2, p0, Ln0/a;->E:F

    const-string v3, "maxWidth"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;

    iget v2, p0, Ln0/a;->D:F

    const-string v3, "maxHeight"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;

    iget-object v2, p0, Ln0/a;->G:Lo0/t;

    const-string/jumbo v3, "uuid"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    iget-wide v2, p0, Ln0/a;->H:J

    const-string v4, "createdTime"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    iget-wide v2, p0, Ln0/a;->I:J

    const-string v4, "modifiedTime"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    iget-wide v2, p0, Ln0/a;->J:J

    const-string v4, "appendTime"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ln0/a;->r:I

    const-string v3, "ownerPageWidth"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ln0/a;->s:I

    const-string v3, "ownerPageHeight"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->L:Z

    const-string v3, "isInitialized"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ln0/a;->K:I

    const-string v3, "layoutType"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ln0/a;->l:Z

    const-string v3, "lockState"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lq0/a;II)Z
    .locals 4

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Ln0/a;->t:F

    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_0
    iput v1, p0, Ln0/a;->t:F

    :goto_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v0

    iput v0, p0, Ln0/a;->u:I

    add-int/lit8 p2, p2, 0x2

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr p2, v0

    :cond_1
    and-int/lit8 v0, p3, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v0

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, v0}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ln0/a;->v:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    iput-object v2, p0, Ln0/a;->v:Ljava/lang/String;

    :goto_1
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Ln0/a;->w:Lo0/p;

    invoke-virtual {v0, p1, p2}, Lo0/p;->a(Lq0/a;I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ln0/a;->w:Lo0/p;

    invoke-virtual {v0}, Lo0/p;->p()V

    :goto_2
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Lq0/a;->c(I)S

    move-result v0

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, v0}, Lq0/a;->p(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ln0/a;->x:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    goto :goto_3

    :cond_4
    iput-object v2, p0, Ln0/a;->x:Ljava/lang/String;

    :goto_3
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_5

    iget-object v0, p0, Ln0/a;->y:Lo0/p;

    invoke-virtual {v0, p1, p2}, Lo0/p;->a(Lq0/a;I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Ln0/a;->y:Lo0/p;

    invoke-virtual {v0}, Lo0/p;->p()V

    :goto_4
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/a;->z:I

    add-int/lit8 p2, p2, 0x4

    goto :goto_5

    :cond_6
    const/4 v0, -0x1

    iput v0, p0, Ln0/a;->z:I

    :goto_5
    and-int/lit16 v0, p3, 0x80

    if-eqz v0, :cond_7

    invoke-virtual {p1, p2}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Ln0/a;->B:F

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Ln0/a;->C:F

    add-int/lit8 p2, p2, 0x4

    goto :goto_6

    :cond_7
    iput v1, p0, Ln0/a;->B:F

    iput v1, p0, Ln0/a;->C:F

    :goto_6
    and-int/lit16 v0, p3, 0x100

    if-eqz v0, :cond_8

    invoke-virtual {p1, p2}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Ln0/a;->E:F

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Lq0/a;->f(I)F

    move-result v0

    iput v0, p0, Ln0/a;->D:F

    add-int/lit8 p2, p2, 0x4

    goto :goto_7

    :cond_8
    iput v1, p0, Ln0/a;->E:F

    iput v1, p0, Ln0/a;->D:F

    :goto_7
    and-int/lit16 v0, p3, 0x2000

    if-eqz v0, :cond_9

    invoke-virtual {p1, p2}, Lq0/a;->g(I)J

    move-result-wide v0

    iput-wide v0, p0, Ln0/a;->J:J

    add-int/lit8 p2, p2, 0x8

    goto :goto_8

    :cond_9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ln0/a;->J:J

    :goto_8
    and-int/lit16 v0, p3, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/a;->r:I

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Lq0/a;->e(I)I

    move-result v0

    iput v0, p0, Ln0/a;->s:I

    add-int/lit8 p2, p2, 0x4

    goto :goto_9

    :cond_a
    iput v1, p0, Ln0/a;->r:I

    iput v1, p0, Ln0/a;->s:I

    :goto_9
    const v0, 0x8000

    and-int/2addr p3, v0

    if-eqz p3, :cond_b

    invoke-virtual {p1, p2}, Lq0/a;->b(I)B

    move-result p1

    iput p1, p0, Ln0/a;->K:I

    goto :goto_a

    :cond_b
    iput v1, p0, Ln0/a;->K:I

    :goto_a
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Lq0/a;I)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2}, Lq0/a;->b(I)B

    move-result v1

    invoke-virtual {p1, v0}, Lq0/a;->c(I)S

    move-result p1

    add-int/2addr v0, v1

    and-int/lit8 v1, p1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Ln0/a;->h:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Ln0/a;->h:Z

    :goto_0
    and-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_1

    iput-boolean v2, p0, Ln0/a;->g:Z

    goto :goto_1

    :cond_1
    iput-boolean v3, p0, Ln0/a;->g:Z

    :goto_1
    and-int/lit8 v1, p1, 0x20

    if-nez v1, :cond_2

    iput-boolean v2, p0, Ln0/a;->i:Z

    goto :goto_2

    :cond_2
    iput-boolean v3, p0, Ln0/a;->i:Z

    :goto_2
    and-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_3

    iput-boolean v2, p0, Ln0/a;->j:Z

    goto :goto_3

    :cond_3
    iput-boolean v3, p0, Ln0/a;->j:Z

    :goto_3
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_4

    iput-boolean v2, p0, Ln0/a;->c:Z

    goto :goto_4

    :cond_4
    iput-boolean v3, p0, Ln0/a;->c:Z

    :goto_4
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_5

    iput-boolean v2, p0, Ln0/a;->d:Z

    goto :goto_5

    :cond_5
    iput-boolean v3, p0, Ln0/a;->d:Z

    :goto_5
    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_6

    iput-boolean v2, p0, Ln0/a;->e:Z

    goto :goto_6

    :cond_6
    iput-boolean v3, p0, Ln0/a;->e:Z

    :goto_6
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_7

    iput-boolean v2, p0, Ln0/a;->f:Z

    goto :goto_7

    :cond_7
    iput-boolean v3, p0, Ln0/a;->f:Z

    :goto_7
    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_8

    iput-boolean v2, p0, Ln0/a;->k:Z

    goto :goto_8

    :cond_8
    iput-boolean v3, p0, Ln0/a;->k:Z

    :goto_8
    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_9

    iput-boolean v2, p0, Ln0/a;->l:Z

    goto :goto_9

    :cond_9
    iput-boolean v3, p0, Ln0/a;->l:Z

    :goto_9
    sub-int/2addr v0, p2

    return v0
.end method

.method public f(Le1/o;)V
    .locals 4

    :try_start_0
    iget v0, p0, Ln0/a;->a:I

    invoke-static {v0}, Ln0/a;->i(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    iget-object v1, p0, Ln0/a;->G:Lo0/t;

    invoke-virtual {v1}, Lo0/t;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-virtual {p0}, Ln0/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "formatVersion"

    iget v1, p0, Ln0/a;->m:I

    invoke-virtual {p1, v0, v1}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v0, "rotatable"

    iget-boolean v1, p0, Ln0/a;->c:Z

    invoke-virtual {p1, v0, v1}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string v0, "selectable"

    iget-boolean v1, p0, Ln0/a;->d:Z

    invoke-virtual {p1, v0, v1}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string v0, "movable"

    iget-boolean v1, p0, Ln0/a;->e:Z

    invoke-virtual {p1, v0, v1}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string v0, "flippable"

    iget-boolean v1, p0, Ln0/a;->f:Z

    invoke-virtual {p1, v0, v1}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string/jumbo v0, "visible"

    iget-boolean v1, p0, Ln0/a;->g:Z

    invoke-virtual {p1, v0, v1}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string v0, "isReplayable"

    iget-boolean v1, p0, Ln0/a;->h:Z

    invoke-virtual {p1, v0, v1}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string v0, "clippable"

    iget-boolean v1, p0, Ln0/a;->i:Z

    invoke-virtual {p1, v0, v1}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string v0, "isTemplateObject"

    iget-boolean v1, p0, Ln0/a;->j:Z

    invoke-virtual {p1, v0, v1}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string/jumbo v0, "timeStamp"

    iget v1, p0, Ln0/a;->o:I

    invoke-virtual {p1, v0, v1}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v0, "resizable"

    iget v1, p0, Ln0/a;->p:I

    invoke-virtual {p1, v0, v1}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v0, "haveBeenToAtt"

    iget-boolean v1, p0, Ln0/a;->k:Z

    invoke-virtual {p1, v0, v1}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string v0, "lockState"

    iget-boolean v1, p0, Ln0/a;->l:Z

    invoke-virtual {p1, v0, v1}, Le1/o;->e(Ljava/lang/String;Z)V

    iget v0, p0, Ln0/a;->t:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const-string v2, "rotationDegree"

    invoke-virtual {p1, v2, v0}, Le1/o;->a(Ljava/lang/String;F)V

    :cond_0
    iget v0, p0, Ln0/a;->z:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v2, v0}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln0/a;->A:Ljava/lang/String;

    const-string v2, "attachedFileId"

    invoke-virtual {p1, v2, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Ln0/a;->B:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    iget v2, p0, Ln0/a;->C:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "minWidth"

    invoke-virtual {p1, v2, v0}, Le1/o;->a(Ljava/lang/String;F)V

    const-string v0, "minHeight"

    iget v2, p0, Ln0/a;->C:F

    invoke-virtual {p1, v0, v2}, Le1/o;->a(Ljava/lang/String;F)V

    :cond_3
    iget v0, p0, Ln0/a;->E:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_4

    iget v2, p0, Ln0/a;->D:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "maxWidth"

    invoke-virtual {p1, v1, v0}, Le1/o;->a(Ljava/lang/String;F)V

    const-string v0, "maxHeight"

    iget v1, p0, Ln0/a;->D:F

    invoke-virtual {p1, v0, v1}, Le1/o;->a(Ljava/lang/String;F)V

    :cond_5
    const-string v0, "createdTime"

    iget-wide v1, p0, Ln0/a;->H:J

    invoke-virtual {p1, v0, v1, v2}, Le1/o;->c(Ljava/lang/String;J)V

    const-string v0, "modifiedTime"

    iget-wide v1, p0, Ln0/a;->I:J

    invoke-virtual {p1, v0, v1, v2}, Le1/o;->c(Ljava/lang/String;J)V

    iget-wide v0, p0, Ln0/a;->J:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    const-string v2, "appendTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    :cond_6
    iget v0, p0, Ln0/a;->r:I

    if-nez v0, :cond_7

    iget v1, p0, Ln0/a;->s:I

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "ownerPageWidth"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v0, "ownerPageHeight"

    iget v1, p0, Ln0/a;->s:I

    invoke-virtual {p1, v0, v1}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Ln0/a;->v:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v1, "aoInfo"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Ln0/a;->x:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v1, "plugInLink"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v0, p0, Ln0/a;->K:I

    if-eqz v0, :cond_b

    const-string v1, "layoutType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composeAttribute : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_ObjectBase"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x146

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public g(Le1/o;)V
    .locals 2

    iget-object v0, p0, Ln0/a;->n:Landroid/graphics/RectF;

    const-string v1, "rect"

    invoke-virtual {p1, v1, v0}, Le1/o;->v(Ljava/lang/String;Landroid/graphics/RectF;)V

    iget-object v0, p0, Ln0/a;->y:Lo0/p;

    invoke-virtual {v0, p1}, Lo0/p;->b(Le1/o;)V

    iget-object v0, p0, Ln0/a;->w:Lo0/p;

    invoke-virtual {v0, p1}, Lo0/p;->b(Le1/o;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)I
    .locals 1

    const-string v0, "stroke"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string/jumbo v0, "textBox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const-string v0, "container"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const-string v0, "shape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x7

    return p1

    :cond_4
    const-string v0, "line"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x8

    return p1

    :cond_5
    const-string/jumbo v0, "voice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0xa

    return p1

    :cond_6
    const-string v0, "formula"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0xb

    return p1

    :cond_7
    const-string v0, "table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0xc

    return p1

    :cond_8
    const-string/jumbo v0, "web"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0xd

    return p1

    :cond_9
    const-string v0, "painting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0xe

    return p1

    :cond_a
    const-string v0, "link"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x11

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public final j()S
    .locals 3

    iget-boolean v0, p0, Ln0/a;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    int-to-short v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Ln0/a;->d:Z

    if-ne v2, v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    :cond_1
    iget-boolean v2, p0, Ln0/a;->e:Z

    if-ne v2, v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    :cond_2
    iget-boolean v2, p0, Ln0/a;->f:Z

    if-ne v2, v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    :cond_3
    iget-boolean v2, p0, Ln0/a;->g:Z

    if-ne v2, v1, :cond_4

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    :cond_4
    iget-boolean v2, p0, Ln0/a;->h:Z

    if-ne v2, v1, :cond_5

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    :cond_5
    iget-boolean v2, p0, Ln0/a;->i:Z

    if-ne v2, v1, :cond_6

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    :cond_6
    iget-boolean v2, p0, Ln0/a;->j:Z

    if-ne v2, v1, :cond_7

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    :cond_7
    iget-boolean v2, p0, Ln0/a;->k:Z

    if-ne v2, v1, :cond_8

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    :cond_8
    iget-boolean v2, p0, Ln0/a;->l:Z

    if-ne v2, v1, :cond_9

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    :cond_9
    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Ln0/a;->a:I

    return v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Ln0/a;->I:J

    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ln0/a;->M:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {v0}, Lo0/s;->g([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ln0/a;->G:Lo0/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'s hash is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_ObjectBase"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public final n(Lq0/a;I)Z
    .locals 12

    add-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Ln0/a;->j()S

    move-result v1

    iget v2, p0, Ln0/a;->m:I

    invoke-virtual {p1, v0, v2}, Lq0/a;->u(II)V

    const/4 v2, 0x4

    add-int/2addr v0, v2

    iget-object v3, p0, Ln0/a;->G:Lo0/t;

    invoke-virtual {v3, p1, v0}, Lo0/t;->b(Lq0/a;I)I

    move-result v3

    add-int/2addr v0, v3

    iget-wide v3, p0, Ln0/a;->I:J

    invoke-virtual {p1, v0, v3, v4}, Lq0/a;->v(IJ)V

    add-int/lit8 v0, v0, 0x8

    new-instance v3, Lcom/samsung/android/sdk/pen/base/SpenRectD;

    iget-object v4, p0, Ln0/a;->n:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/pen/base/SpenRectD;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, v0, v3}, Lq0/a;->A(ILcom/samsung/android/sdk/pen/base/SpenRectD;)V

    add-int/lit8 v0, v0, 0x20

    iget v3, p0, Ln0/a;->o:I

    invoke-virtual {p1, v0, v3}, Lq0/a;->u(II)V

    add-int/2addr v0, v2

    iget v3, p0, Ln0/a;->p:I

    invoke-virtual {p1, v0, v3}, Lq0/a;->q(II)V

    const/4 v3, 0x1

    add-int/2addr v0, v3

    sub-int v4, v0, p2

    iget v5, p0, Ln0/a;->t:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {p1, v0, v5}, Lq0/a;->t(IF)V

    add-int/lit8 v0, v0, 0x4

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v8

    :goto_0
    iget-object v7, p0, Ln0/a;->v:Ljava/lang/String;

    const/4 v9, 0x2

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v0, v7}, Lq0/a;->r(II)V

    add-int/lit8 v10, v0, 0x2

    iget-object v11, p0, Ln0/a;->v:Ljava/lang/String;

    invoke-virtual {p1, v10, v11}, Lq0/a;->D(ILjava/lang/String;)V

    mul-int/2addr v7, v9

    add-int/2addr v7, v9

    add-int/2addr v0, v7

    or-int/lit8 v5, v5, 0x4

    :cond_1
    iget-object v7, p0, Ln0/a;->w:Lo0/p;

    invoke-virtual {v7}, Lo0/p;->l()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Ln0/a;->w:Lo0/p;

    invoke-virtual {v7, p1, v0}, Lo0/p;->f(Lq0/a;I)I

    move-result v7

    add-int/2addr v0, v7

    or-int/lit8 v5, v5, 0x8

    :cond_2
    iget-object v7, p0, Ln0/a;->x:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v0, v7}, Lq0/a;->r(II)V

    add-int/lit8 v10, v0, 0x2

    iget-object v11, p0, Ln0/a;->x:Ljava/lang/String;

    invoke-virtual {p1, v10, v11}, Lq0/a;->D(ILjava/lang/String;)V

    mul-int/2addr v7, v9

    add-int/2addr v7, v9

    add-int/2addr v0, v7

    or-int/lit8 v5, v5, 0x10

    :cond_3
    iget-object v7, p0, Ln0/a;->y:Lo0/p;

    invoke-virtual {v7}, Lo0/p;->l()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Ln0/a;->y:Lo0/p;

    invoke-virtual {v7, p1, v0}, Lo0/p;->f(Lq0/a;I)I

    move-result v7

    add-int/2addr v0, v7

    or-int/lit8 v5, v5, 0x20

    :cond_4
    iget v7, p0, Ln0/a;->z:I

    const/4 v10, -0x1

    if-eq v7, v10, :cond_5

    invoke-virtual {p1, v0, v7}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    or-int/lit8 v5, v5, 0x40

    :cond_5
    iget v7, p0, Ln0/a;->C:F

    cmpl-float v7, v7, v6

    if-nez v7, :cond_6

    iget v7, p0, Ln0/a;->B:F

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_7

    :cond_6
    iget v7, p0, Ln0/a;->B:F

    invoke-virtual {p1, v0, v7}, Lq0/a;->t(IF)V

    add-int/lit8 v0, v0, 0x4

    iget v7, p0, Ln0/a;->C:F

    invoke-virtual {p1, v0, v7}, Lq0/a;->t(IF)V

    add-int/2addr v0, v2

    or-int/lit16 v5, v5, 0x80

    :cond_7
    iget v7, p0, Ln0/a;->D:F

    cmpl-float v7, v7, v6

    if-nez v7, :cond_8

    iget v7, p0, Ln0/a;->E:F

    cmpl-float v6, v7, v6

    if-eqz v6, :cond_9

    :cond_8
    iget v6, p0, Ln0/a;->E:F

    invoke-virtual {p1, v0, v6}, Lq0/a;->t(IF)V

    add-int/lit8 v0, v0, 0x4

    iget v6, p0, Ln0/a;->D:F

    invoke-virtual {p1, v0, v6}, Lq0/a;->t(IF)V

    add-int/2addr v0, v2

    or-int/lit16 v5, v5, 0x100

    :cond_9
    iget-wide v6, p0, Ln0/a;->J:J

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_a

    invoke-virtual {p1, v0, v6, v7}, Lq0/a;->v(IJ)V

    add-int/lit8 v0, v0, 0x8

    or-int/lit16 v5, v5, 0x2000

    :cond_a
    iget v6, p0, Ln0/a;->r:I

    if-nez v6, :cond_b

    iget v7, p0, Ln0/a;->s:I

    if-eqz v7, :cond_c

    :cond_b
    invoke-virtual {p1, v0, v6}, Lq0/a;->u(II)V

    add-int/lit8 v0, v0, 0x4

    iget v6, p0, Ln0/a;->s:I

    invoke-virtual {p1, v0, v6}, Lq0/a;->u(II)V

    add-int/2addr v0, v2

    or-int/lit16 v5, v5, 0x4000

    :cond_c
    iget v6, p0, Ln0/a;->K:I

    if-eqz v6, :cond_d

    invoke-virtual {p1, v0, v6}, Lq0/a;->q(II)V

    add-int/lit8 v0, v0, 0x1

    const v6, 0x8000

    or-int/2addr v5, v6

    :cond_d
    sub-int/2addr v0, p2

    if-nez v5, :cond_e

    move v4, v8

    :cond_e
    invoke-virtual {p1, p2, v0}, Lq0/a;->u(II)V

    add-int/2addr p2, v2

    invoke-virtual {p1, p2, v8}, Lq0/a;->r(II)V

    add-int/2addr p2, v9

    invoke-virtual {p1, p2, v4}, Lq0/a;->u(II)V

    add-int/2addr p2, v2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2, v9}, Lq0/a;->q(II)V

    invoke-virtual {p1, v0, v1}, Lq0/a;->s(IS)V

    add-int/2addr v0, v9

    add-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, v0, v2}, Lq0/a;->q(II)V

    invoke-virtual {p1, p2, v5}, Lq0/a;->u(II)V

    return v3
.end method

.method public final o()I
    .locals 6

    iget-object v0, p0, Ln0/a;->G:Lo0/t;

    invoke-virtual {v0}, Lo0/t;->c()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x8

    iget v0, p0, Ln0/a;->t:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x4

    :cond_0
    iget v0, p0, Ln0/a;->u:I

    if-lez v0, :cond_1

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Ln0/a;->v:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Ln0/a;->w:Lo0/p;

    invoke-virtual {v0}, Lo0/p;->l()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ln0/a;->w:Lo0/p;

    invoke-virtual {v0}, Lo0/p;->g()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-object v0, p0, Ln0/a;->x:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Ln0/a;->y:Lo0/p;

    invoke-virtual {v0}, Lo0/p;->l()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ln0/a;->y:Lo0/p;

    invoke-virtual {v0}, Lo0/p;->g()I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget v0, p0, Ln0/a;->z:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    add-int/lit8 v1, v1, 0x4

    :cond_6
    iget v0, p0, Ln0/a;->C:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7

    iget v0, p0, Ln0/a;->B:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    :cond_7
    add-int/lit8 v1, v1, 0x8

    :cond_8
    iget v0, p0, Ln0/a;->D:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_9

    iget v0, p0, Ln0/a;->E:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_a

    :cond_9
    add-int/lit8 v1, v1, 0x8

    :cond_a
    iget-wide v2, p0, Ln0/a;->J:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    add-int/lit8 v1, v1, 0x8

    :cond_b
    iget v0, p0, Ln0/a;->r:I

    if-nez v0, :cond_c

    iget v0, p0, Ln0/a;->s:I

    if-eqz v0, :cond_d

    :cond_c
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    :cond_d
    iget v0, p0, Ln0/a;->K:I

    if-eqz v0, :cond_e

    add-int/lit8 v1, v1, 0x1

    :cond_e
    return v1
.end method

.method public p()I
    .locals 1

    iget v0, p0, Ln0/a;->a:I

    return v0
.end method

.method public q()Lo0/t;
    .locals 1

    iget-object v0, p0, Ln0/a;->G:Lo0/t;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln0/a;->G:Lo0/t;

    invoke-virtual {v0}, Lo0/t;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()V
    .locals 4

    iget-boolean v0, p0, Ln0/a;->L:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ln0/a;->K:I

    iput v0, p0, Ln0/a;->p:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ln0/a;->F:J

    const/4 v1, -0x1

    iput v1, p0, Ln0/a;->z:I

    iput v1, p0, Ln0/a;->q:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Ln0/a;->h:Z

    iput-boolean v1, p0, Ln0/a;->g:Z

    iput-boolean v1, p0, Ln0/a;->c:Z

    iput-boolean v1, p0, Ln0/a;->i:Z

    iput-boolean v1, p0, Ln0/a;->d:Z

    iput-boolean v1, p0, Ln0/a;->e:Z

    iput-boolean v1, p0, Ln0/a;->f:Z

    new-instance v2, Lo0/p;

    const-string v3, "sorBundle"

    invoke-direct {v2, v3}, Lo0/p;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ln0/a;->w:Lo0/p;

    new-instance v2, Lo0/p;

    const-string v3, "extraBundle"

    invoke-direct {v2, v3}, Lo0/p;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ln0/a;->y:Lo0/p;

    new-instance v2, Lo0/t;

    invoke-direct {v2}, Lo0/t;-><init>()V

    iput-object v2, p0, Ln0/a;->G:Lo0/t;

    iput-boolean v1, p0, Ln0/a;->L:Z

    iput-boolean v1, p0, Ln0/a;->k:Z

    iput-boolean v0, p0, Ln0/a;->l:Z

    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Ln0/a;->N:Z

    return v0
.end method

.method public final u(Ljava/io/RandomAccessFile;)V
    .locals 3

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_0
    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result p1

    and-int/lit8 v0, p1, 0x10

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Ln0/a;->h:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Ln0/a;->h:Z

    :goto_0
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_2

    iput-boolean v2, p0, Ln0/a;->g:Z

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Ln0/a;->g:Z

    :goto_1
    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_3

    iput-boolean v2, p0, Ln0/a;->i:Z

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Ln0/a;->i:Z

    :goto_2
    and-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_4

    iput-boolean v2, p0, Ln0/a;->j:Z

    goto :goto_3

    :cond_4
    iput-boolean v1, p0, Ln0/a;->j:Z

    :goto_3
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_5

    iput-boolean v2, p0, Ln0/a;->c:Z

    goto :goto_4

    :cond_5
    iput-boolean v1, p0, Ln0/a;->c:Z

    :goto_4
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_6

    iput-boolean v2, p0, Ln0/a;->d:Z

    goto :goto_5

    :cond_6
    iput-boolean v1, p0, Ln0/a;->d:Z

    :goto_5
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_7

    iput-boolean v2, p0, Ln0/a;->e:Z

    goto :goto_6

    :cond_7
    iput-boolean v1, p0, Ln0/a;->e:Z

    :goto_6
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_8

    iput-boolean v2, p0, Ln0/a;->f:Z

    goto :goto_7

    :cond_8
    iput-boolean v1, p0, Ln0/a;->f:Z

    :goto_7
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_9

    iput-boolean v2, p0, Ln0/a;->k:Z

    goto :goto_8

    :cond_9
    iput-boolean v1, p0, Ln0/a;->k:Z

    :goto_8
    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_a

    iput-boolean v2, p0, Ln0/a;->l:Z

    goto :goto_9

    :cond_a
    iput-boolean v1, p0, Ln0/a;->l:Z

    :goto_9
    return-void
.end method

.method public v(Lq0/a;II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln0/a;->c(Lq0/a;I)I

    move-result p1

    return p1
.end method

.method public w(Lq0/a;I)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln0/a;->n(Lq0/a;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget p1, p0, Ln0/a;->m:I

    return p1
.end method

.method public x()I
    .locals 1

    invoke-virtual {p0}, Ln0/a;->o()I

    move-result v0

    return v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ln0/a;->G:Lo0/t;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo0/t;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "hash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/s;->f(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Ln0/a;->M:[B

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/a;->h(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/a;->a:I

    goto/16 :goto_0

    :cond_2
    const-string v1, "formatVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/a;->m:I

    goto/16 :goto_0

    :cond_3
    const-string v1, "rotatable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/a;->c:Z

    goto/16 :goto_0

    :cond_4
    const-string v1, "selectable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/a;->d:Z

    goto/16 :goto_0

    :cond_5
    const-string v1, "movable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/a;->e:Z

    goto/16 :goto_0

    :cond_6
    const-string v1, "flippable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/a;->f:Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/a;->g:Z

    goto/16 :goto_0

    :cond_8
    const-string v1, "isReplayable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/a;->h:Z

    goto/16 :goto_0

    :cond_9
    const-string v1, "clippable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/a;->i:Z

    goto/16 :goto_0

    :cond_a
    const-string v1, "isTemplateObject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/a;->j:Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "timeStamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/a;->o:I

    goto/16 :goto_0

    :cond_c
    const-string v1, "resizable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/a;->p:I

    goto/16 :goto_0

    :cond_d
    const-string v1, "haveBeenToAtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/a;->k:Z

    goto/16 :goto_0

    :cond_e
    const-string v1, "lockState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ln0/a;->l:Z

    goto/16 :goto_0

    :cond_f
    const-string v1, "rotationDegree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ln0/a;->t:F

    goto/16 :goto_0

    :cond_10
    const-string v1, "attachedFileId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/a;->A:Ljava/lang/String;

    iget-object p2, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {p2, p1}, Lk0/a;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/a;->z:I

    goto/16 :goto_0

    :cond_11
    const-string v1, "minWidth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ln0/a;->B:F

    goto/16 :goto_0

    :cond_12
    const-string v1, "minHeight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ln0/a;->C:F

    goto/16 :goto_0

    :cond_13
    const-string v1, "maxWidth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ln0/a;->E:F

    goto/16 :goto_0

    :cond_14
    const-string v1, "maxHeight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq0/d;->d(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ln0/a;->D:F

    goto/16 :goto_0

    :cond_15
    const-string v1, "createdTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ln0/a;->H:J

    goto/16 :goto_0

    :cond_16
    const-string v1, "modifiedTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ln0/a;->I:J

    goto/16 :goto_0

    :cond_17
    const-string v1, "appendTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ln0/a;->J:J

    goto :goto_0

    :cond_18
    const-string v1, "ownerPageWidth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/a;->r:I

    goto :goto_0

    :cond_19
    const-string v1, "ownerPageHeight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/a;->s:I

    goto :goto_0

    :cond_1a
    const-string v1, "aoInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/a;->v:Ljava/lang/String;

    goto :goto_0

    :cond_1b
    const-string v1, "plugInLink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln0/a;->x:Ljava/lang/String;

    goto :goto_0

    :cond_1c
    const-string v1, "layoutType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln0/a;->K:I

    :cond_1d
    :goto_0
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lq0/d;->j(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Ln0/a;->n:Landroid/graphics/RectF;

    goto :goto_3

    :cond_0
    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extraBundle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Ln0/a;->y:Lo0/p;

    :goto_1
    invoke-virtual {v2, p1}, Lo0/p;->o(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_1
    const-string v3, "sorBundle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln0/a;->w:Lo0/p;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method
