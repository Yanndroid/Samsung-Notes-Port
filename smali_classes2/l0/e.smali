.class public Ll0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Lm0/c;
.implements Lm0/b;
.implements Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0/e$d;,
        Ll0/e$e;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ll0/e$d;",
            ">;"
        }
    .end annotation
.end field

.field public E:I

.field public F:J

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

.field public l:Landroid/graphics/RectF;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:I

.field public p:I

.field public q:Lk0/b;

.field public r:[B

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll0/e$e;",
            ">;"
        }
    .end annotation
.end field

.field public t:J

.field public u:J

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll0/b;",
            ">;"
        }
    .end annotation
.end field

.field public w:I

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lk0/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ll0/e;->l:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll0/e;->m:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Ll0/e;->n:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll0/e;->s:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll0/e;->v:Ljava/util/List;

    iput v0, p0, Ll0/e;->z:I

    const/16 v0, 0xfa0

    iput v0, p0, Ll0/e;->A:I

    iput v0, p0, Ll0/e;->B:I

    const/4 v0, 0x0

    iput v0, p0, Ll0/e;->C:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ll0/e;->D:Ljava/util/Map;

    iput v0, p0, Ll0/e;->E:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll0/e;->F:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll0/e;->G:Ljava/util/ArrayList;

    iput-object p1, p0, Ll0/e;->a:Ljava/lang/String;

    iput-object p2, p0, Ll0/e;->e:Ljava/lang/String;

    iput-object p3, p0, Ll0/e;->q:Lk0/b;

    return-void
.end method

.method public constructor <init>(Lk0/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ll0/e;->l:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll0/e;->m:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Ll0/e;->n:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll0/e;->s:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll0/e;->v:Ljava/util/List;

    iput v0, p0, Ll0/e;->z:I

    const/16 v0, 0xfa0

    iput v0, p0, Ll0/e;->A:I

    iput v0, p0, Ll0/e;->B:I

    const/4 v0, 0x0

    iput v0, p0, Ll0/e;->C:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ll0/e;->D:Ljava/util/Map;

    iput v0, p0, Ll0/e;->E:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll0/e;->F:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll0/e;->G:Ljava/util/ArrayList;

    iput-object p1, p0, Ll0/e;->q:Lk0/b;

    return-void
.end method


# virtual methods
.method public A(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "page"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p1, v3}, Ll0/e;->x(Lorg/xmlpull/v1/XmlPullParser;I)V

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

    const-string v4, "WCon_Page"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ll0/e;->y(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public B(Ljava/io/RandomAccessFile;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ll0/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ll0/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".page"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WCon_Page"

    const-string v1, "readWDoc()"

    invoke-static {v0, v1, p1}, Lq0/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v1}, Ll0/e;->w(Ljava/io/RandomAccessFile;)V

    const/16 p1, 0x20

    invoke-static {v1, p1}, Lq0/b;->k(Ljava/io/RandomAccessFile;I)[B

    move-result-object p1

    iput-object p1, p0, Ll0/e;->r:[B

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readWDoc - page Hash = ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/e;->r:[B

    invoke-static {v2}, Lo0/s;->g([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "is invalid."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final C(Ljava/io/RandomAccessFile;Lo0/s;)V
    .locals 3

    iget-object v0, p0, Ll0/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Ll0/e;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    iget v1, p0, Ll0/e;->w:I

    invoke-static {p1, v1}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ll0/e;->v:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/b;

    invoke-virtual {v2, p1}, Ll0/b;->t(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v2}, Ll0/b;->e()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Lo0/s;->a([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final D(Ljava/io/RandomAccessFile;)V
    .locals 7

    iget-object v0, p0, Ll0/e;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Ll0/e;->c:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Ll0/e;->c:I

    invoke-static {p1, v0}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ll0/e;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/e$e;

    iget v3, v2, Ll0/e$e;->c:I

    invoke-static {p1, v3}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v3, v2, Ll0/e$e;->a:I

    invoke-static {p1, v3}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v2, v2, Ll0/e$e;->b:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v3}, Lq0/b;->H(Ljava/io/RandomAccessFile;Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final E()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ll0/e;->d:I

    iget-boolean v1, p0, Ll0/e;->f:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    or-int/2addr v0, v2

    iput v0, p0, Ll0/e;->d:I

    :cond_0
    return-void
.end method

.method public final F(Ljava/io/RandomAccessFile;)V
    .locals 2

    iget-object v0, p0, Ll0/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Ll0/e;->c:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Ll0/e;->c:I

    invoke-static {p1, v0}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Ll0/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G(Ljava/io/RandomAccessFile;)V
    .locals 2

    iget-object v0, p0, Ll0/e;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Ll0/e;->c:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Ll0/e;->c:I

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public H(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll0/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ll0/e;->v:Ljava/util/List;

    return-void
.end method

.method public final I(Ljava/io/RandomAccessFile;)V
    .locals 10

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x12

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ll0/e;->E()V

    iget-object v2, p0, Ll0/e;->k:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p1, v2}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v2, p0, Ll0/e;->g:I

    invoke-static {p1, v2}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v2, p0, Ll0/e;->h:I

    invoke-static {p1, v2}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v2, p0, Ll0/e;->i:I

    invoke-static {p1, v2}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v2, p0, Ll0/e;->j:I

    invoke-static {p1, v2}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v2, p0, Ll0/e;->e:Ljava/lang/String;

    invoke-static {p1, v2}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-wide v2, p0, Ll0/e;->u:J

    invoke-static {p1, v2, v3}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget v2, p0, Ll0/e;->B:I

    invoke-static {p1, v2}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v2, p0, Ll0/e;->A:I

    invoke-static {p1, v2}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const/4 v4, 0x0

    iput v4, p0, Ll0/e;->c:I

    iget-object v5, p0, Ll0/e;->l:Landroid/graphics/RectF;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget v7, v5, Landroid/graphics/RectF;->left:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    iget v7, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    iget v7, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    or-int/2addr v7, v6

    iput v7, p0, Ll0/e;->c:I

    new-instance v7, Lcom/samsung/android/sdk/pen/base/SpenRectD;

    invoke-direct {v7, v5}, Lcom/samsung/android/sdk/pen/base/SpenRectD;-><init>(Landroid/graphics/RectF;)V

    invoke-static {p1, v7}, Lq0/b;->I(Ljava/io/RandomAccessFile;Lcom/samsung/android/sdk/pen/base/SpenRectD;)V

    :cond_1
    invoke-virtual {p0, p1}, Ll0/e;->F(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, p1}, Ll0/e;->G(Ljava/io/RandomAccessFile;)V

    iget v5, p0, Ll0/e;->n:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    iget v8, p0, Ll0/e;->c:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Ll0/e;->c:I

    invoke-static {p1, v5}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :cond_2
    iget v5, p0, Ll0/e;->y:I

    if-eqz v5, :cond_3

    iget v8, p0, Ll0/e;->c:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Ll0/e;->c:I

    invoke-static {p1, v5}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :cond_3
    iget v5, p0, Ll0/e;->z:I

    if-eq v5, v7, :cond_4

    iget v7, p0, Ll0/e;->c:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Ll0/e;->c:I

    invoke-static {p1, v5}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :cond_4
    iget v5, p0, Ll0/e;->o:I

    if-eqz v5, :cond_5

    iget v7, p0, Ll0/e;->c:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Ll0/e;->c:I

    invoke-static {p1, v5}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :cond_5
    iget v5, p0, Ll0/e;->p:I

    if-eqz v5, :cond_6

    iget v7, p0, Ll0/e;->c:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Ll0/e;->c:I

    invoke-static {p1, v5}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :cond_6
    invoke-virtual {p0, p1}, Ll0/e;->D(Ljava/io/RandomAccessFile;)V

    iget v5, p0, Ll0/e;->C:I

    if-eqz v5, :cond_7

    invoke-static {p1, v5}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v5, p0, Ll0/e;->c:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Ll0/e;->c:I

    :cond_7
    iget-object v5, p0, Ll0/e;->D:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_a

    iget v7, p0, Ll0/e;->c:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Ll0/e;->c:I

    invoke-static {p1, v5}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    const/16 v5, 0x31

    invoke-static {p1, v5}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    iget-object v5, p0, Ll0/e;->D:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll0/e$d;

    invoke-static {p1, v8}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v8, v7, Ll0/e$d;->a:I

    invoke-static {p1, v8}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v8, v7, Ll0/e$d;->b:I

    invoke-static {p1, v8}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v8, v7, Ll0/e$d;->c:I

    invoke-static {p1, v8}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-boolean v8, v7, Ll0/e$d;->d:Z

    if-ne v8, v6, :cond_8

    move v8, v6

    goto :goto_1

    :cond_8
    move v8, v4

    :goto_1
    invoke-static {p1, v8}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    iget v8, v7, Ll0/e$d;->e:I

    invoke-static {p1, v8}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    move v8, v4

    :goto_2
    const/4 v9, 0x3

    if-ge v8, v9, :cond_9

    iget-object v9, v7, Ll0/e$d;->f:[I

    aget v9, v9, v8

    invoke-static {p1, v9}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    iget v8, v7, Ll0/e$d;->g:I

    invoke-static {p1, v8}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v8, v7, Ll0/e$d;->h:I

    invoke-static {p1, v8}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v8, v7, Ll0/e$d;->i:I

    invoke-static {p1, v8}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v7, v7, Ll0/e$d;->j:I

    invoke-static {p1, v7}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    goto :goto_0

    :cond_a
    iget v4, p0, Ll0/e;->E:I

    if-eqz v4, :cond_b

    invoke-static {p1, v4}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v4, p0, Ll0/e;->c:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Ll0/e;->c:I

    :cond_b
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v0, v4

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    long-to-int v0, v2

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    iget v1, p0, Ll0/e;->d:I

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-static {p1, v0}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Ll0/e;->c:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    new-instance v0, Lo0/s;

    invoke-direct {v0}, Lo0/s;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, p1, v0}, Ll0/e;->C(Ljava/io/RandomAccessFile;Lo0/s;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ll0/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ll0/e;->u:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo0/s;->e(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lo0/s;->a([B)V

    invoke-virtual {v0}, Lo0/s;->b()Lo0/r;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lo0/r;->a()[B

    move-result-object v0

    iput-object v0, p0, Ll0/e;->r:[B

    invoke-static {p1, v0}, Lq0/b;->A(Ljava/io/RandomAccessFile;[B)V

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writePage - page Hash = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll0/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_Page"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Page for SAMSUNG S-Pen SDK"

    invoke-static {p1, v0}, Lq0/b;->L(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

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
    instance-of v0, p1, Ll0/e;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ll0/e;

    const-string v0, "WCon_Page"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;->compare(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public J(Ljava/lang/String;)V
    .locals 2

    const-string v0, ".page"

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ll0/e;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll0/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll0/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ll0/e;->b:Ljava/lang/String;

    iget-object p1, p0, Ll0/e;->b:Ljava/lang/String;

    const-string/jumbo v0, "writeWDoc()"

    invoke-static {v0, p1}, Lq0/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Ll0/e;->I(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public a(Ljava/lang/Object;Lk0/d;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ll0/e;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ll0/e;

    iget v1, p1, Ll0/e;->c:I

    iput v1, p0, Ll0/e;->c:I

    iget v1, p1, Ll0/e;->d:I

    iput v1, p0, Ll0/e;->d:I

    iget-object v1, p1, Ll0/e;->e:Ljava/lang/String;

    iput-object v1, p0, Ll0/e;->e:Ljava/lang/String;

    iget-boolean v1, p1, Ll0/e;->f:Z

    iput-boolean v1, p0, Ll0/e;->f:Z

    iget v1, p1, Ll0/e;->g:I

    iput v1, p0, Ll0/e;->g:I

    iget v1, p1, Ll0/e;->h:I

    iput v1, p0, Ll0/e;->h:I

    iget v1, p1, Ll0/e;->i:I

    iput v1, p0, Ll0/e;->i:I

    iget v1, p1, Ll0/e;->j:I

    iput v1, p0, Ll0/e;->j:I

    iget-object v1, p1, Ll0/e;->k:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    iput-object v1, p0, Ll0/e;->k:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    iget-object v1, p1, Ll0/e;->l:Landroid/graphics/RectF;

    iput-object v1, p0, Ll0/e;->l:Landroid/graphics/RectF;

    iget-object v1, p1, Ll0/e;->m:Ljava/util/List;

    iput-object v1, p0, Ll0/e;->m:Ljava/util/List;

    iget-object v1, p1, Ll0/e;->s:Ljava/util/ArrayList;

    iput-object v1, p0, Ll0/e;->s:Ljava/util/ArrayList;

    iget-object v1, p0, Ll0/e;->D:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p1, Ll0/e;->D:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/e$d;

    iget-object v4, p0, Ll0/e;->D:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v1, p1, Ll0/e;->n:I

    iput v1, p0, Ll0/e;->n:I

    iget v1, p1, Ll0/e;->o:I

    iput v1, p0, Ll0/e;->o:I

    iget v1, p1, Ll0/e;->p:I

    iput v1, p0, Ll0/e;->p:I

    iget-object v1, p1, Ll0/e;->q:Lk0/b;

    iput-object v1, p0, Ll0/e;->q:Lk0/b;

    iget-wide v1, p1, Ll0/e;->t:J

    iput-wide v1, p0, Ll0/e;->t:J

    iget-wide v1, p1, Ll0/e;->u:J

    iput-wide v1, p0, Ll0/e;->u:J

    iget v1, p1, Ll0/e;->C:I

    iput v1, p0, Ll0/e;->C:I

    iget-object v1, p1, Ll0/e;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lk0/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ll0/e;->v:Ljava/util/List;

    iget p2, p1, Ll0/e;->w:I

    iput p2, p0, Ll0/e;->w:I

    iget-object p2, p1, Ll0/e;->x:Ljava/lang/String;

    iput-object p2, p0, Ll0/e;->x:Ljava/lang/String;

    iget p2, p1, Ll0/e;->y:I

    iput p2, p0, Ll0/e;->y:I

    iget p2, p1, Ll0/e;->z:I

    iput p2, p0, Ll0/e;->z:I

    iget p2, p1, Ll0/e;->A:I

    iput p2, p0, Ll0/e;->A:I

    iget p2, p1, Ll0/e;->B:I

    iput p2, p0, Ll0/e;->B:I

    iget p2, p1, Ll0/e;->E:I

    iput p2, p0, Ll0/e;->E:I

    iget-object p2, p1, Ll0/e;->G:Ljava/util/ArrayList;

    iput-object p2, p0, Ll0/e;->G:Ljava/util/ArrayList;

    iget-wide p1, p1, Ll0/e;->F:J

    iput-wide p1, p0, Ll0/e;->F:J

    return v0
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ll0/e;->c(Le1/o;)V

    invoke-virtual {p0, p1}, Ll0/e;->d(Le1/o;)V

    return-void
.end method

.method public c(Le1/o;)V
    .locals 4

    iget-object v0, p0, Ll0/e;->e:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll0/e;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Ll0/e;->f:Z

    const-string v1, "isTextOnly"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Ll0/e;->i()I

    move-result v0

    const-string v1, "orientation"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/e;->g:I

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/e;->h:I

    const-string v1, "height"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/e;->i:I

    const-string v1, "offsetX"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/e;->j:I

    const-string v1, "offsetY"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/e;->B:I

    const-string v1, "formatVersion"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Ll0/e;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll0/e;->x:Ljava/lang/String;

    const-string v1, "templateUri"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Ll0/e;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v2, "bgImageId"

    invoke-virtual {p1, v2, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Ll0/e;->y:I

    if-eqz v0, :cond_2

    const-string v2, "bgImageMode"

    invoke-virtual {p1, v2, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_2
    iget v0, p0, Ll0/e;->z:I

    if-eq v0, v1, :cond_3

    const-string v1, "bgColor"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_3
    iget v0, p0, Ll0/e;->o:I

    if-eqz v0, :cond_4

    const-string v1, "bgWidth"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_4
    iget v0, p0, Ll0/e;->p:I

    if-eqz v0, :cond_5

    const-string v1, "bgRotation"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, Ll0/e;->A:I

    const-string v1, "minFormatVersion"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/e;->w:I

    const-string v1, "currentLayerIndex"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-wide v0, p0, Ll0/e;->t:J

    const-string v2, "createdTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget-wide v0, p0, Ll0/e;->u:J

    const-string v2, "modifiedTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget v0, p0, Ll0/e;->C:I

    if-eqz v0, :cond_6

    const-string v1, "templateType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_6
    iget v0, p0, Ll0/e;->E:I

    if-eqz v0, :cond_7

    const-string v1, "importedDataHeight"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_7
    iget-wide v0, p0, Ll0/e;->F:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8

    const-string v2, "recognizedDataModifiedTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    :cond_8
    return-void
.end method

.method public collectVariables()Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v2, p0, Ll0/e;->e:Ljava/lang/String;

    const-string v3, "mUuid"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ll0/e;->f:Z

    const-string v3, "mFlagTextOnly"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->g:I

    const-string v3, "mPageWidth"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->h:I

    const-string v3, "mPageHeight"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->i:I

    const-string v3, "mOffsetX"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->j:I

    const-string v3, "mOffsetY"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget-object v2, p0, Ll0/e;->k:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "mNoteOrientation"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;

    iget-object v2, p0, Ll0/e;->l:Landroid/graphics/RectF;

    const-string v3, "mPageDrawnRectF"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;-><init>(Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;

    iget-object v2, p0, Ll0/e;->m:Ljava/util/List;

    const-string v3, "mTagList"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Ll0/e$c;

    iget-object v2, p0, Ll0/e;->D:Ljava/util/Map;

    const-string v3, "canvasCacheDataMap"

    invoke-direct {v1, p0, v3, v2}, Ll0/e$c;-><init>(Ll0/e;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->n:I

    const-string v3, "mBgImageUriMediaId"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->o:I

    const-string v3, "mBgWidth"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->p:I

    const-string v3, "mBgRotation"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;

    iget-object v2, p0, Ll0/e;->q:Lk0/b;

    iget-object v2, v2, Lk0/b;->b:Lk0/a;

    const-string v3, "mContentFileManager"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    iget-wide v2, p0, Ll0/e;->t:J

    const-string v4, "mCreatedTime"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    iget-wide v2, p0, Ll0/e;->u:J

    const-string v4, "mModifiedTime"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->C:I

    const-string v3, "mTemplateType"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Ll0/e$b;

    iget-object v2, p0, Ll0/e;->v:Ljava/util/List;

    const-string v3, "mLayerList"

    invoke-direct {v1, p0, v3, v2}, Ll0/e$b;-><init>(Ll0/e;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->w:I

    const-string v3, "mCurrentLayerIndex"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v2, p0, Ll0/e;->x:Ljava/lang/String;

    const-string v3, "mTemplateUri"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->y:I

    const-string v3, "mBgImageMode"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->z:I

    const-string v3, "mBgColor"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->A:I

    const-string v3, "mMinFormatVersion"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Ll0/e$a;

    iget v2, p0, Ll0/e;->B:I

    const-string v3, "mFormatVersion"

    invoke-direct {v1, p0, v3, v2}, Ll0/e$a;-><init>(Ll0/e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/e;->E:I

    const-string v3, "mImportedDataHeight"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    iget-wide v2, p0, Ll0/e;->F:J

    const-string v4, "mRecognizedDataModifiedTime"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    return-object v0
.end method

.method public d(Le1/o;)V
    .locals 9

    const-string v0, "pdfData"

    const-string v1, "pair"

    const-string v2, "pdfDataList"

    const-string v3, "canvasCacheDataMap"

    :try_start_0
    iget-object v4, p0, Ll0/e;->l:Landroid/graphics/RectF;

    if-eqz v4, :cond_1

    iget v5, v4, Landroid/graphics/RectF;->left:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "drawnRect"

    invoke-virtual {p1, v5, v4}, Le1/o;->v(Ljava/lang/String;Landroid/graphics/RectF;)V

    :cond_1
    iget-object v4, p0, Ll0/e;->D:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v3}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v4, p0, Ll0/e;->D:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-virtual {p1, v1}, Le1/o;->y(Ljava/lang/String;)V

    const-string v6, "key"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll0/e$d;

    const-string v6, "fileId"

    iget v7, v5, Ll0/e$d;->a:I

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    const-string/jumbo v6, "width"

    iget v7, v5, Ll0/e$d;->b:I

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v6, "height"

    iget v7, v5, Ll0/e$d;->c:I

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v6, "isDarkMode"

    iget-boolean v7, v5, Ll0/e$d;->d:Z

    invoke-virtual {p1, v6, v7}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string v6, "backgroundColor"

    iget v7, v5, Ll0/e$d;->e:I

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    const-string/jumbo v6, "version0"

    iget-object v7, v5, Ll0/e$d;->f:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    const-string/jumbo v6, "version1"

    iget-object v7, v5, Ll0/e$d;->f:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    const-string/jumbo v6, "version2"

    iget-object v7, v5, Ll0/e$d;->f:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v6, "cacheVersion"

    iget v7, v5, Ll0/e$d;->g:I

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v6, "property"

    iget v7, v5, Ll0/e$d;->h:I

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v6, "localeListId"

    iget v7, v5, Ll0/e$d;->i:I

    invoke-virtual {p1, v6, v7}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v6, "systemFontPathHash"

    iget v5, v5, Ll0/e$d;->j:I

    invoke-virtual {p1, v6, v5}, Le1/o;->b(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Le1/o;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Le1/o;->g(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Ll0/e;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v2}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v1, p0, Ll0/e;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/e$e;

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    const-string v4, "pageIndex"

    iget v5, v3, Ll0/e$e;->a:I

    invoke-virtual {p1, v4, v5}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v4, p0, Ll0/e;->q:Lk0/b;

    iget-object v4, v4, Lk0/b;->b:Lk0/a;

    iget v5, v3, Ll0/e$e;->c:I

    invoke-virtual {v4, v5}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ll0/e$e;->d:Ljava/lang/String;

    const-string v5, "hash"

    invoke-virtual {p1, v5, v4}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/Rect;

    iget-object v3, v3, Ll0/e$e;->b:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "pdfRect"

    invoke-virtual {p1, v3, v4}, Le1/o;->u(Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Le1/o;->g(Ljava/lang/String;)V

    :cond_5
    const-string v0, "layerList"

    const-string v1, "layer"

    iget-object v2, p0, Ll0/e;->v:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Le1/o;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composeXml : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_Page"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x146

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Ll0/e;->r:[B

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll0/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll0/e;->v:Ljava/util/List;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Ll0/e;->u:J

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ll0/e;->r:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {v0}, Lo0/s;->g([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll0/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'s hash is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_Page"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Ll0/e;->k:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->LANDSCAPE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/io/RandomAccessFile;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Ll0/e;->n:I

    iget v0, p0, Ll0/e;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result p1

    iput p1, p0, Ll0/e;->n:I

    :cond_0
    return-void
.end method

.method public final l(Ljava/io/RandomAccessFile;)V
    .locals 8

    iget-object v0, p0, Ll0/e;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Ll0/e;->c:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    mul-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v3

    new-instance v4, Ll0/e$d;

    invoke-direct {v4}, Ll0/e$d;-><init>()V

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v5

    iput v5, v4, Ll0/e$d;->a:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v5

    iput v5, v4, Ll0/e$d;->b:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v5

    iput v5, v4, Ll0/e$d;->c:I

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    iput-boolean v6, v4, Ll0/e$d;->d:Z

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v5

    iput v5, v4, Ll0/e$d;->e:I

    move v5, v1

    :goto_2
    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    iget-object v6, v4, Ll0/e$d;->f:[I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v5

    iput v5, v4, Ll0/e$d;->g:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v5

    iput v5, v4, Ll0/e$d;->h:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v5

    iput v5, v4, Ll0/e$d;->i:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v5

    iput v5, v4, Ll0/e$d;->j:I

    iget-object v5, p0, Ll0/e;->D:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final m(Ljava/io/RandomAccessFile;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result p1

    iput p1, p0, Ll0/e;->c:I

    return-void
.end method

.method public final n(Ljava/io/RandomAccessFile;)V
    .locals 2

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Ll0/e;->k:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/e;->g:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/e;->h:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/e;->i:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/e;->j:I

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll0/e;->e:Ljava/lang/String;

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    iput-wide v0, p0, Ll0/e;->u:J

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/e;->B:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result p1

    iput p1, p0, Ll0/e;->A:I

    return-void
.end method

.method public final o(Ljava/io/RandomAccessFile;)V
    .locals 7

    iget v0, p0, Ll0/e;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lq0/b;->s(Ljava/io/RandomAccessFile;)Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-wide v2, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    double-to-float v2, v2

    iget-wide v3, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    double-to-float v3, v3

    iget-wide v4, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    double-to-float v4, v4

    iget-wide v5, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    double-to-float v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Ll0/e;->l:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Ll0/e;->l:Landroid/graphics/RectF;

    :goto_0
    invoke-virtual {p0, p1}, Ll0/e;->s(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, p1}, Ll0/e;->t(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, p1}, Ll0/e;->k(Ljava/io/RandomAccessFile;)V

    iget v0, p0, Ll0/e;->c:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/e;->y:I

    goto :goto_1

    :cond_1
    iput v1, p0, Ll0/e;->y:I

    :goto_1
    iget v0, p0, Ll0/e;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    iput v0, p0, Ll0/e;->z:I

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0, v1}, Ll0/e;->p(Ljava/io/RandomAccessFile;II)I

    move-result v0

    iput v0, p0, Ll0/e;->o:I

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0, v1}, Ll0/e;->p(Ljava/io/RandomAccessFile;II)I

    move-result v0

    iput v0, p0, Ll0/e;->p:I

    invoke-virtual {p0, p1}, Ll0/e;->q(Ljava/io/RandomAccessFile;)V

    iget v0, p0, Ll0/e;->c:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/e;->C:I

    :cond_3
    invoke-virtual {p0, p1}, Ll0/e;->l(Ljava/io/RandomAccessFile;)V

    iget v0, p0, Ll0/e;->c:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_4

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/e;->E:I

    :cond_4
    iget v0, p0, Ll0/e;->c:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_5
    return-void
.end method

.method public final p(Ljava/io/RandomAccessFile;II)I
    .locals 1

    iget v0, p0, Ll0/e;->c:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method public final q(Ljava/io/RandomAccessFile;)V
    .locals 8

    iget v0, p0, Ll0/e;->c:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll0/e;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Ll0/e$e;

    invoke-direct {v2}, Ll0/e$e;-><init>()V

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, v2, Ll0/e$e;->c:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, v2, Ll0/e$e;->a:I

    iget v3, p0, Ll0/e;->B:I

    const/16 v4, 0x7f2

    if-ge v3, v4, :cond_0

    invoke-static {p1}, Lq0/b;->t(Ljava/io/RandomAccessFile;)Landroid/graphics/RectF;

    move-result-object v3

    iput-object v3, v2, Ll0/e$e;->b:Landroid/graphics/RectF;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lq0/b;->r(Ljava/io/RandomAccessFile;)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, v2, Ll0/e$e;->b:Landroid/graphics/RectF;

    :goto_1
    iget-object v3, p0, Ll0/e;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r(Ljava/io/RandomAccessFile;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result p1

    iput p1, p0, Ll0/e;->d:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Ll0/e;->f:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ll0/e;->f:Z

    :goto_0
    return-void
.end method

.method public final s(Ljava/io/RandomAccessFile;)V
    .locals 4

    iget-object v0, p0, Ll0/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ll0/e;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/16 v2, 0x400

    invoke-static {p1, v2}, Lq0/b;->y(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ll0/e;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(Ljava/io/RandomAccessFile;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ll0/e;->x:Ljava/lang/String;

    iget v0, p0, Ll0/e;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/e;->x:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final u(Ljava/io/RandomAccessFile;)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    invoke-virtual {p0, p1}, Ll0/e;->r(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, p1}, Ll0/e;->m(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, p1}, Ll0/e;->n(Ljava/io/RandomAccessFile;)V

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    invoke-virtual {p0, p1}, Ll0/e;->o(Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public final v(Ljava/io/RandomAccessFile;)V
    .locals 5

    iget-object v0, p0, Ll0/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v0

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, p0, Ll0/e;->w:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    new-instance v2, Ll0/b;

    iget-object v3, p0, Ll0/e;->a:Ljava/lang/String;

    iget-object v4, p0, Ll0/e;->q:Lk0/b;

    invoke-direct {v2, v3, v4}, Ll0/b;-><init>(Ljava/lang/String;Lk0/b;)V

    invoke-virtual {v2, p1}, Ll0/b;->r(Ljava/io/RandomAccessFile;)V

    iget-object v3, p0, Ll0/e;->v:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(Ljava/io/RandomAccessFile;)V
    .locals 2

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    invoke-virtual {p0, p1}, Ll0/e;->u(Ljava/io/RandomAccessFile;)V

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, p1}, Ll0/e;->v(Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public x(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/e;->e:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const-string v1, "hash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo0/s;->f(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Ll0/e;->r:[B

    goto/16 :goto_1

    :cond_1
    const-string v1, "isTextOnly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ll0/e;->f:Z

    goto/16 :goto_1

    :cond_2
    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->LANDSCAPE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    :goto_0
    iput-object p1, p0, Ll0/e;->k:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->g:I

    goto/16 :goto_1

    :cond_5
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->h:I

    goto/16 :goto_1

    :cond_6
    const-string v1, "offsetX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->i:I

    goto/16 :goto_1

    :cond_7
    const-string v1, "offsetY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->j:I

    goto/16 :goto_1

    :cond_8
    const-string v1, "formatVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->B:I

    const/16 p2, 0xfa0

    if-le p1, p2, :cond_16

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseAttribute - unknown format version = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ll0/e;->B:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WCon_Page"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Ll0/e;->B:I

    goto/16 :goto_1

    :cond_9
    const-string v1, "templateUri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/e;->x:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v1, "bgImageId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->n:I

    goto/16 :goto_1

    :cond_b
    const-string v1, "bgImageMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->y:I

    goto/16 :goto_1

    :cond_c
    const-string v1, "bgColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Ll0/e;->z:I

    goto/16 :goto_1

    :cond_d
    const-string v1, "bgWidth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->o:I

    goto/16 :goto_1

    :cond_e
    const-string v1, "bgRotation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->p:I

    goto/16 :goto_1

    :cond_f
    const-string v1, "minFormatVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->A:I

    goto/16 :goto_1

    :cond_10
    const-string v1, "currentLayerIndex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->w:I

    goto :goto_1

    :cond_11
    const-string v1, "createdTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/e;->t:J

    goto :goto_1

    :cond_12
    const-string v1, "modifiedTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/e;->u:J

    goto :goto_1

    :cond_13
    const-string v1, "templateType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->C:I

    goto :goto_1

    :cond_14
    const-string v1, "importedDataHeight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/e;->E:I

    goto :goto_1

    :cond_15
    const-string v1, "recognizedDataModifiedTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/e;->F:J

    :cond_16
    :goto_1
    return-void
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawnRect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lq0/d;->j(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Ll0/e;->l:Landroid/graphics/RectF;

    goto/16 :goto_3

    :cond_0
    const-string v1, "canvasCacheDataMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    new-instance v3, Ll0/e$d;

    invoke-direct {v3}, Ll0/e$d;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    const/4 v7, 0x2

    if-ge v5, v0, :cond_f

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "key"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_2

    :cond_2
    const-string v9, "fileId"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Ll0/e$d;->a:I

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v9, "width"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Ll0/e$d;->b:I

    goto/16 :goto_2

    :cond_4
    const-string v9, "height"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Ll0/e$d;->c:I

    goto/16 :goto_2

    :cond_5
    const-string v9, "isDarkMode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v3, Ll0/e$d;->d:Z

    goto/16 :goto_2

    :cond_6
    const-string v9, "backgroundColor"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Ll0/e$d;->e:I

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v9, "version0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v7, v3, Ll0/e$d;->f:[I

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v4

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v9, "version1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v7, v3, Ll0/e$d;->f:[I

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v2

    goto :goto_2

    :cond_9
    const-string/jumbo v9, "version2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v8, v3, Ll0/e$d;->f:[I

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v7

    goto :goto_2

    :cond_a
    const-string v7, "cacheVersion"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Ll0/e$d;->g:I

    goto :goto_2

    :cond_b
    const-string v7, "property"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Ll0/e$d;->h:I

    goto :goto_2

    :cond_c
    const-string v7, "localeListId"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Ll0/e$d;->i:I

    goto :goto_2

    :cond_d
    const-string v7, "systemFontPathHash"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Ll0/e$d;->j:I

    :cond_e
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Ll0/e;->D:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v7}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto/16 :goto_0

    :cond_10
    const-string v1, "pdfDataList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0, p1}, Ll0/e;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_11
    const-string v1, "layerList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll0/e;->v:Ljava/util/List;

    goto :goto_3

    :cond_12
    const-string v1, "layer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ll0/b;

    iget-object v1, p0, Ll0/e;->a:Ljava/lang/String;

    iget-object v2, p0, Ll0/e;->q:Lk0/b;

    invoke-direct {v0, v1, v2}, Ll0/b;-><init>(Ljava/lang/String;Lk0/b;)V

    invoke-virtual {v0, p1}, Ll0/b;->q(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object p1, p0, Ll0/e;->v:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_3
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "pdfDataList"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_6

    const/4 v5, 0x4

    if-eq v0, v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseXml - invalid eventType = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "WCon_Page"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "pdfData"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v2, Ll0/e$e;

    invoke-direct {v2}, Ll0/e$e;-><init>()V

    iget-object v0, p0, Ll0/e;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_6

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pageIndex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Ll0/e$e;->a:I

    goto :goto_1

    :cond_2
    const-string v7, "hash"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Ll0/e$e;->d:Ljava/lang/String;

    iget-object v7, p0, Ll0/e;->q:Lk0/b;

    iget-object v7, v7, Lk0/b;->b:Lk0/a;

    invoke-virtual {v7, v6}, Lk0/a;->e(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Ll0/e$e;->c:I

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const-string v5, "rect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_6

    iget-object v0, v2, Ll0/e$e;->b:Landroid/graphics/RectF;

    if-nez v0, :cond_6

    invoke-static {p1}, Lq0/d;->j(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, v2, Ll0/e$e;->b:Landroid/graphics/RectF;

    goto :goto_2

    :cond_5
    const-string v5, "pdfRect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    invoke-static {p1}, Lq0/d;->h(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {v5, v6, v7, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, v2, Ll0/e$e;->b:Landroid/graphics/RectF;

    :cond_6
    :goto_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void
.end method
