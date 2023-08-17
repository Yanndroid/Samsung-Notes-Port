.class public Ll0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Lm0/c;
.implements Lm0/b;
.implements Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:J

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln0/a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:I

.field public m:Lk0/b;

.field public n:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll0/b;->j:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll0/b;->a:Z

    iput-boolean p1, p0, Ll0/b;->b:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll0/b;->k:Z

    const/16 p1, 0xff

    iput p1, p0, Ll0/b;->d:I

    const/4 p1, -0x1

    iput p1, p0, Ll0/b;->e:I

    iput-object p2, p0, Ll0/b;->m:Lk0/b;

    iput p1, p0, Ll0/b;->l:I

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ll0/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ll0/b;

    const-string v1, "WCon_Layer"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;->compare(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    move v3, v2

    :goto_0
    iget-object v4, p0, Ll0/b;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " !! equals() - object index = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] check"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Ll0/b;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Ll0/b;->j:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mObjectList - object index = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public a(Ljava/lang/Object;Lk0/d;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ll0/b;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ll0/b;

    iget-boolean v1, p1, Ll0/b;->a:Z

    iput-boolean v1, p0, Ll0/b;->a:Z

    iget-boolean v1, p1, Ll0/b;->b:Z

    iput-boolean v1, p0, Ll0/b;->b:Z

    iget-boolean v1, p1, Ll0/b;->k:Z

    iput-boolean v1, p0, Ll0/b;->k:Z

    iget v1, p1, Ll0/b;->c:I

    iput v1, p0, Ll0/b;->c:I

    iget v1, p1, Ll0/b;->d:I

    iput v1, p0, Ll0/b;->d:I

    iget v1, p1, Ll0/b;->e:I

    iput v1, p0, Ll0/b;->e:I

    iget-object v1, p1, Ll0/b;->f:Ljava/lang/String;

    iput-object v1, p0, Ll0/b;->f:Ljava/lang/String;

    iget-object v1, p1, Ll0/b;->g:Ljava/lang/String;

    iput-object v1, p0, Ll0/b;->g:Ljava/lang/String;

    iget-wide v1, p1, Ll0/b;->h:J

    iput-wide v1, p0, Ll0/b;->h:J

    iget-wide v1, p1, Ll0/b;->i:J

    iput-wide v1, p0, Ll0/b;->i:J

    iget v1, p1, Ll0/b;->l:I

    iput v1, p0, Ll0/b;->l:I

    invoke-virtual {p1}, Ll0/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lk0/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ll0/b;->j:Ljava/util/List;

    return v0
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ll0/b;->c(Le1/o;)V

    invoke-virtual {p0, p1}, Ll0/b;->d(Le1/o;)V

    return-void
.end method

.method public c(Le1/o;)V
    .locals 3

    iget-object v0, p0, Ll0/b;->g:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll0/b;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Ll0/b;->a:Z

    const-string v1, "flagEventForwardable"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Ll0/b;->b:Z

    const-string/jumbo v1, "visible"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Ll0/b;->k:Z

    const-string v1, "lockState"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget v0, p0, Ll0/b;->c:I

    const-string v1, "layerNumber"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/b;->d:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "transparency"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Ll0/b;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v1, "bgColor"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Ll0/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ll0/b;->f:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-wide v0, p0, Ll0/b;->h:J

    const-string v2, "createdTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget-wide v0, p0, Ll0/b;->i:J

    const-string v2, "modifiedTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget v0, p0, Ll0/b;->l:I

    const-string/jumbo v1, "thumbnail"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public collectVariables()Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ll0/b;->b:Z

    const-string v3, "mVisible"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ll0/b;->k:Z

    const-string v3, "mLockState"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/b;->c:I

    const-string v3, "mLayerId"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/b;->d:I

    const-string v3, "mTransparency"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/b;->e:I

    const-string v3, "mBgColor"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v2, p0, Ll0/b;->f:Ljava/lang/String;

    const-string v3, "mLayerName"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v2, p0, Ll0/b;->g:Ljava/lang/String;

    const-string v3, "mUuid"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    iget-wide v2, p0, Ll0/b;->h:J

    const-string v4, "mCreatedTime"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    iget-wide v2, p0, Ll0/b;->i:J

    const-string v4, "mModifiedTime"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/b;->l:I

    const-string v3, "mThumbnailMediaId"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    return-object v0
.end method

.method public d(Le1/o;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ll0/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "objectList"

    const-string v1, "object"

    iget-object v2, p0, Ll0/b;->j:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Le1/o;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composeElement : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_Layer"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x146

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Ll0/b;->n:[B

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Ll0/b;->i:J

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ll0/b;->n:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {v0}, Lo0/s;->g([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "WCon_Layer"

    const-string v1, "hash is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll0/b;->j:Ljava/util/List;

    return-object v0
.end method

.method public final j(Ljava/io/RandomAccessFile;IILn0/b;)V
    .locals 6

    const-string v0, "]"

    const/16 v1, 0x153

    const/high16 v2, 0x200000

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    new-instance p2, Ln0/b;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p2, v4}, Ln0/b;-><init>(Lk0/b;)V

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v4

    if-gt v4, v2, :cond_1

    invoke-static {p1, v4}, Lq0/b;->k(Ljava/io/RandomAccessFile;I)[B

    move-result-object v0

    new-instance v1, Lq0/a;

    invoke-direct {v1, v0}, Lq0/a;-><init>([B)V

    invoke-virtual {p2, v1, v3, v4}, Ln0/a;->v(Lq0/a;II)I

    if-eqz p4, :cond_0

    invoke-virtual {p4, p2}, Ln0/b;->G(Ln0/a;)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Ll0/b;->j:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Ll0/b;->k(Ljava/io/RandomAccessFile;ILn0/b;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ls0/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid container object size ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 p3, 0x0

    goto :goto_1

    :pswitch_1
    new-instance p3, Ln0/g;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p3, v4}, Ln0/g;-><init>(Lk0/b;)V

    goto :goto_1

    :pswitch_2
    new-instance p3, Ln0/h;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p3, v4}, Ln0/h;-><init>(Lk0/b;)V

    goto :goto_1

    :pswitch_3
    new-instance p3, Ln0/o;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p3, v4}, Ln0/o;-><init>(Lk0/b;)V

    goto :goto_1

    :pswitch_4
    new-instance p3, Ln0/d;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p3, v4}, Ln0/d;-><init>(Lk0/b;)V

    goto :goto_1

    :pswitch_5
    new-instance p3, Ln0/n;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p3, v4}, Ln0/n;-><init>(Lk0/b;)V

    goto :goto_1

    :pswitch_6
    new-instance p3, Ln0/f;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p3, v4}, Ln0/f;-><init>(Lk0/b;)V

    goto :goto_1

    :pswitch_7
    new-instance p3, Ln0/i;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p3, v4}, Ln0/i;-><init>(Lk0/b;)V

    goto :goto_1

    :pswitch_8
    new-instance p3, Ln0/e;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p3, v4}, Ln0/e;-><init>(Lk0/b;)V

    goto :goto_1

    :pswitch_9
    new-instance p3, Ln0/m;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p3, v4}, Ln0/m;-><init>(Lk0/b;)V

    goto :goto_1

    :pswitch_a
    new-instance p3, Ln0/k;

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    invoke-direct {p3, v4}, Ln0/k;-><init>(Lk0/b;)V

    iget-object v4, p0, Ll0/b;->m:Lk0/b;

    iget-object v4, v4, Lk0/b;->c:Lk0/c;

    iget v5, v4, Lk0/c;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lk0/c;->b:I

    :goto_1
    if-eqz p3, :cond_6

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v4

    if-gt v4, v2, :cond_5

    invoke-static {p1, v4}, Lq0/b;->k(Ljava/io/RandomAccessFile;I)[B

    move-result-object p1

    new-instance v0, Lq0/a;

    invoke-direct {v0, p1}, Lq0/a;-><init>([B)V

    const/16 p1, 0xf

    if-ne p2, p1, :cond_3

    move-object p1, p3

    check-cast p1, Ln0/k;

    invoke-virtual {p1, v0, v3, v3, v4}, Ln0/k;->P(Lq0/a;III)I

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v0, v3, v4}, Ln0/a;->v(Lq0/a;II)I

    :goto_2
    if-eqz p4, :cond_4

    invoke-virtual {p3}, Ln0/a;->E()V

    invoke-virtual {p4, p3}, Ln0/b;->G(Ln0/a;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Ll0/b;->j:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance p1, Ls0/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid object size ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final k(Ljava/io/RandomAccessFile;ILn0/b;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const-string v3, "]"

    const-string v4, "WCon_Layer"

    if-ge v0, p2, :cond_0

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result v5

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    :try_start_0
    invoke-virtual {p0, p1, v6}, Ll0/b;->l(Ljava/io/RandomAccessFile;I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1, v5, v6, p3}, Ll0/b;->j(Ljava/io/RandomAccessFile;IILn0/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "loadObjectList - Fail to load object ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "], type = ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadObjectList - object loaded ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], skip ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final l(Ljava/io/RandomAccessFile;I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, p1, v2}, Ll0/b;->l(Ljava/io/RandomAccessFile;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Ljava/io/RandomAccessFile;Lq0/a;Ln0/a;ILo0/s;)V
    .locals 6

    invoke-static {p1, p4}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {p3}, Ln0/a;->x()I

    move-result p4

    add-int/lit8 v0, p4, 0x20

    invoke-virtual {p2, v0}, Lq0/a;->F(I)V

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1}, Ln0/a;->w(Lq0/a;I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeDefaultObject - object id = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ln0/a;->q()Lo0/t;

    move-result-object v2

    invoke-virtual {v2}, Lo0/t;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], mt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ln0/a;->l()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WCon_Layer"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ln0/a;->l()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lo0/s;->e(Ljava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4, p3}, Lq0/a;->x(I[B)V

    invoke-virtual {p5, p3}, Lo0/s;->a([B)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "writeDefaultObject - object Hash = ["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lo0/s;->g([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {p2}, Lq0/a;->E()[B

    move-result-object p2

    invoke-static {p1, p2, v0}, Lq0/b;->B(Ljava/io/RandomAccessFile;[BI)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "newWriteDefaultObject() - objectHash is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Ljava/io/RandomAccessFile;Lq0/a;Ln0/b;Lo0/s;)V
    .locals 8

    invoke-virtual {p3}, Ln0/b;->J()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Ll0/b;->m(Ljava/io/RandomAccessFile;Lq0/a;Ln0/a;ILo0/s;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p3, v1}, Ln0/b;->I(I)Ln0/a;

    move-result-object v5

    invoke-virtual {v5}, Ln0/a;->p()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {v5}, Ln0/a;->p()I

    move-result v2

    invoke-static {p1, v2}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    check-cast v5, Ln0/b;

    invoke-virtual {p0, p1, p2, v5, p4}, Ll0/b;->n(Ljava/io/RandomAccessFile;Lq0/a;Ln0/b;Lo0/s;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ln0/a;->k()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeObjectContainer    >>>    object - index = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], type = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WCon_Layer"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Ll0/b;->m(Ljava/io/RandomAccessFile;Lq0/a;Ln0/a;ILo0/s;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public o(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/b;->g:Ljava/lang/String;

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

    iput-object p1, p0, Ll0/b;->n:[B

    goto/16 :goto_0

    :cond_1
    const-string v1, "flagEventForwardable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ll0/b;->a:Z

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ll0/b;->b:Z

    goto/16 :goto_0

    :cond_3
    const-string v1, "lockState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ll0/b;->k:Z

    goto/16 :goto_0

    :cond_4
    const-string v1, "layerNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/b;->c:I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "transparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/b;->d:I

    goto :goto_0

    :cond_6
    const-string v1, "bgColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Ll0/b;->e:I

    goto :goto_0

    :cond_7
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v1, "createdTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/b;->h:J

    goto :goto_0

    :cond_9
    const-string v1, "modifiedTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/b;->i:J

    goto :goto_0

    :cond_a
    const-string/jumbo v1, "thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/b;->l:I

    :cond_b
    :goto_0
    return-void
.end method

.method public p(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll0/b;->j:Ljava/util/List;

    goto :goto_2

    :cond_0
    const-string v1, "object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Ll0/b;->m:Lk0/b;

    invoke-static {v1, v0}, Ln0/c;->b(Ljava/lang/String;Lk0/b;)Ln0/a;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lq0/d;->q(Lorg/xmlpull/v1/XmlPullParser;)I

    return-void

    :cond_3
    invoke-virtual {v0, p1}, Ln0/a;->A(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object p1, p0, Ll0/b;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public q(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "layer"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p1, v3}, Ll0/b;->o(Lorg/xmlpull/v1/XmlPullParser;I)V

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

    const-string v4, "WCon_Layer"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ll0/b;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public r(Ljava/io/RandomAccessFile;)V
    .locals 6

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result v1

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result v2

    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iput-boolean v5, p0, Ll0/b;->a:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Ll0/b;->a:Z

    :goto_0
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_1

    iput-boolean v5, p0, Ll0/b;->b:Z

    goto :goto_1

    :cond_1
    iput-boolean v4, p0, Ll0/b;->b:Z

    :goto_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iput-boolean v5, p0, Ll0/b;->k:Z

    goto :goto_2

    :cond_2
    iput-boolean v4, p0, Ll0/b;->k:Z

    :goto_2
    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, p0, Ll0/b;->c:I

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_3
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_4

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result v0

    iput v0, p0, Ll0/b;->d:I

    :cond_4
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_5

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/b;->e:I

    :cond_5
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_6

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll0/b;->f:Ljava/lang/String;

    :cond_6
    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_7

    const/16 v0, 0x400

    invoke-static {p1, v0}, Lq0/b;->y(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll0/b;->g:Ljava/lang/String;

    :cond_7
    and-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_8

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    iput-wide v0, p0, Ll0/b;->i:J

    :cond_8
    const/16 v0, 0x20

    and-int/lit8 v1, v2, 0x20

    if-eqz v1, :cond_9

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, p0, Ll0/b;->l:I

    :cond_9
    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v1

    iget-object v2, p0, Ll0/b;->m:Lk0/b;

    iget-object v2, v2, Lk0/b;->c:Lk0/c;

    iget v3, v2, Lk0/c;->a:I

    add-int/2addr v3, v1

    iput v3, v2, Lk0/c;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readWDoc - object count = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WCon_Layer"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Ll0/b;->k(Ljava/io/RandomAccessFile;ILn0/b;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readWDoc - total object count = ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ll0/b;->m:Lk0/b;

    iget-object v5, v5, Lk0/b;->c:Lk0/c;

    iget v5, v5, Lk0/c;->a:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], stroke = ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ll0/b;->m:Lk0/b;

    iget-object v5, v5, Lk0/b;->c:Lk0/c;

    iget v5, v5, Lk0/c;->b:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Ll0/b;->m:Lk0/b;

    iget-object v2, v2, Lk0/b;->c:Lk0/c;

    iget v5, v2, Lk0/c;->a:I

    iget v2, v2, Lk0/c;->b:I

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v2, v5

    const v5, 0x186a0

    if-gt v2, v5, :cond_a

    invoke-static {p1, v0}, Lq0/b;->k(Ljava/io/RandomAccessFile;I)[B

    move-result-object p1

    iput-object p1, p0, Ll0/b;->n:[B

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readWDoc - layer Hash = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ll0/b;->n:[B

    invoke-static {v0}, Lo0/s;->g([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    new-instance p1, Li0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] objects are included. Fail to add ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] objects."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Li0/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln0/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ll0/b;->j:Ljava/util/List;

    return-void
.end method

.method public t(Ljava/io/RandomAccessFile;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_c

    const/16 v2, 0xc

    int-to-long v2, v2

    add-long/2addr v2, v0

    invoke-virtual {v7, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-boolean v2, v6, Ll0/b;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-boolean v4, v6, Ll0/b;->b:Z

    if-nez v4, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    iget-boolean v4, v6, Ll0/b;->k:Z

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget v4, v6, Ll0/b;->c:I

    invoke-static {v7, v4}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    iget v8, v6, Ll0/b;->d:I

    const/16 v9, 0xff

    if-eq v8, v9, :cond_3

    invoke-static {v7, v8}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    iget v9, v6, Ll0/b;->e:I

    const/4 v11, -0x1

    if-eq v9, v11, :cond_4

    or-int/lit8 v8, v8, 0x2

    invoke-static {v7, v9}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :cond_4
    iget-object v9, v6, Ll0/b;->f:Ljava/lang/String;

    if-eqz v9, :cond_5

    or-int/lit8 v8, v8, 0x4

    invoke-static {v7, v9}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    :cond_5
    iget-object v9, v6, Ll0/b;->g:Ljava/lang/String;

    if-eqz v9, :cond_6

    or-int/lit8 v8, v8, 0x8

    invoke-static {v7, v9}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    :cond_6
    or-int/lit8 v8, v8, 0x10

    iget-wide v12, v6, Ll0/b;->i:J

    invoke-static {v7, v12, v13}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget v9, v6, Ll0/b;->l:I

    if-eq v9, v11, :cond_7

    or-int/lit8 v8, v8, 0x20

    invoke-static {v7, v9}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "save - id = ["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Ll0/b;->g:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "], mt = ["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v6, Ll0/b;->i:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "WCon_Layer"

    invoke-static {v12, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v13

    move-object v15, v11

    sub-long v10, v13, v0

    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v0, v10

    invoke-static {v7, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    long-to-int v0, v4

    invoke-static {v7, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    const/4 v0, 0x1

    invoke-static {v7, v0}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    invoke-static {v7, v2}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    invoke-static {v7, v0}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    invoke-static {v7, v8}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {v7, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v8, Lo0/s;

    invoke-direct {v8}, Lo0/s;-><init>()V

    iget-object v0, v6, Ll0/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v7, v9}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeWDoc    >>>    object count = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v10, v15

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lq0/a;

    invoke-direct {v11}, Lq0/a;-><init>()V

    move v13, v3

    :goto_2
    if-ge v13, v9, :cond_9

    iget-object v0, v6, Ll0/b;->j:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ln0/a;

    invoke-virtual {v3}, Ln0/a;->k()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeWDoc    >>>    object - index = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], type = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v0}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeWDoc    >>>    object - raf = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    check-cast v3, Ln0/b;

    invoke-virtual {v6, v7, v11, v3, v8}, Ll0/b;->n(Ljava/io/RandomAccessFile;Lq0/a;Ln0/b;Lo0/s;)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Ll0/b;->m(Ljava/io/RandomAccessFile;Lq0/a;Ln0/a;ILo0/s;)V

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v6, Ll0/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v6, Ll0/b;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/s;->e(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v8, v0}, Lo0/s;->a([B)V

    invoke-virtual {v8}, Lo0/s;->b()Lo0/r;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo0/r;->a()[B

    move-result-object v0

    iput-object v0, v6, Ll0/b;->n:[B

    invoke-static {v7, v0}, Lq0/b;->A(Ljava/io/RandomAccessFile;[B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeWDoc - layer Hash = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ll0/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "writeWDoc() - layerHash block is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "writeWDoc() - layerDataHash is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "writeWDoc() - invalid file pointer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
