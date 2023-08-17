.class public Ll0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Lm0/b;
.implements Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0/c$e;,
        Ll0/c$d;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:Ljava/lang/String;

.field public H:I

.field public I:I

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ln0/m;

.field public N:Ln0/m;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:J

.field public V:Z

.field public W:J

.field public X:J

.field public Y:J

.field public Z:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public a0:I

.field public b:Ljava/lang/String;

.field public b0:I

.field public c:I

.field public c0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public d0:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public f0:J

.field public g:Ljava/lang/String;

.field public g0:Lk0/b;

.field public h:I

.field public h0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln0/a;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:Ll0/c$d;

.field public k:D

.field public l:D

.field public m:I

.field public n:I

.field public o:J

.field public p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ll0/c$e;

.field public r:I

.field public s:Lo0/n;

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo0/v;",
            ">;"
        }
    .end annotation
.end field

.field public u:[B

.field public v:J

.field public w:J

.field public x:J

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk0/b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ll0/c;->e:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Ll0/c;->h:I

    iput v1, p0, Ll0/c;->i:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Ll0/c;->k:D

    iput-wide v2, p0, Ll0/c;->l:D

    const/4 v2, 0x0

    iput v2, p0, Ll0/c;->m:I

    iput v1, p0, Ll0/c;->n:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ll0/c;->o:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ll0/c;->p:Ljava/util/Map;

    new-instance v3, Ll0/c$e;

    invoke-direct {v3}, Ll0/c$e;-><init>()V

    iput-object v3, p0, Ll0/c;->q:Ll0/c$e;

    const/high16 v3, -0x80000000

    iput v3, p0, Ll0/c;->r:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ll0/c;->t:Ljava/util/ArrayList;

    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Ll0/c;->D:I

    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Ll0/c;->E:I

    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Ll0/c;->F:I

    iput-object v0, p0, Ll0/c;->G:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Ll0/c;->O:Z

    const-string v3, "normal"

    iput-object v3, p0, Ll0/c;->R:Ljava/lang/String;

    const-string v3, "[]"

    iput-object v3, p0, Ll0/c;->S:Ljava/lang/String;

    iput-wide v1, p0, Ll0/c;->Y:J

    iput-object v0, p0, Ll0/c;->Z:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;->TEXT_DIRECTION_DEFAULT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ll0/c;->a0:I

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;->THEME_DEFAULT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ll0/c;->b0:I

    const/4 v0, 0x0

    iput-object v0, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll0/c;->h0:Ljava/util/List;

    iput-object p1, p0, Ll0/c;->a:Ljava/lang/String;

    iput-object p2, p0, Ll0/c;->g0:Lk0/b;

    return-void
.end method

.method public constructor <init>(Lk0/b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ll0/c;->e:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Ll0/c;->h:I

    iput v1, p0, Ll0/c;->i:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Ll0/c;->k:D

    iput-wide v2, p0, Ll0/c;->l:D

    const/4 v2, 0x0

    iput v2, p0, Ll0/c;->m:I

    iput v1, p0, Ll0/c;->n:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ll0/c;->o:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ll0/c;->p:Ljava/util/Map;

    new-instance v3, Ll0/c$e;

    invoke-direct {v3}, Ll0/c$e;-><init>()V

    iput-object v3, p0, Ll0/c;->q:Ll0/c$e;

    const/high16 v3, -0x80000000

    iput v3, p0, Ll0/c;->r:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ll0/c;->t:Ljava/util/ArrayList;

    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Ll0/c;->D:I

    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Ll0/c;->E:I

    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, p0, Ll0/c;->F:I

    iput-object v0, p0, Ll0/c;->G:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Ll0/c;->O:Z

    const-string v3, "normal"

    iput-object v3, p0, Ll0/c;->R:Ljava/lang/String;

    const-string v3, "[]"

    iput-object v3, p0, Ll0/c;->S:Ljava/lang/String;

    iput-wide v1, p0, Ll0/c;->Y:J

    iput-object v0, p0, Ll0/c;->Z:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;->TEXT_DIRECTION_DEFAULT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ll0/c;->a0:I

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;->THEME_DEFAULT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ll0/c;->b0:I

    const/4 v0, 0x0

    iput-object v0, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll0/c;->h0:Ljava/util/List;

    iput-object p1, p0, Ll0/c;->g0:Lk0/b;

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    iget-wide v0, p0, Ll0/c;->x:J

    return-wide v0
.end method

.method public A0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll0/c;->d0:Ljava/lang/String;

    return-void
.end method

.method public B()J
    .locals 2

    iget-wide v0, p0, Ll0/c;->f0:J

    return-wide v0
.end method

.method public B0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll0/c;->e0:Ljava/lang/String;

    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/c;->d0:Ljava/lang/String;

    return-object v0
.end method

.method public C0(I)V
    .locals 0

    iput p1, p0, Ll0/c;->E:I

    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/c;->e0:Ljava/lang/String;

    return-object v0
.end method

.method public D0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll0/c;->G:Ljava/lang/String;

    return-void
.end method

.method public E()I
    .locals 1

    iget v0, p0, Ll0/c;->A:I

    return v0
.end method

.method public E0(I)V
    .locals 0

    iput p1, p0, Ll0/c;->D:I

    return-void
.end method

.method public F()I
    .locals 1

    iget v0, p0, Ll0/c;->z:I

    return v0
.end method

.method public F0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll0/c;->R:Ljava/lang/String;

    return-void
.end method

.method public G()I
    .locals 1

    iget v0, p0, Ll0/c;->E:I

    return v0
.end method

.method public G0(Ljava/lang/Object;)V
    .locals 6

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Ll0/c;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Ll0/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update() - note : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ll0/c;->x:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ll0/c;->H:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] => ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Ll0/c;->x:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Ll0/c;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WCon_WNote"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Ll0/c;->c:I

    iput v0, p0, Ll0/c;->c:I

    iget v0, p1, Ll0/c;->d:I

    iput v0, p0, Ll0/c;->d:I

    iget-wide v4, p1, Ll0/c;->v:J

    iput-wide v4, p0, Ll0/c;->v:J

    iget-wide v4, p1, Ll0/c;->w:J

    iput-wide v4, p0, Ll0/c;->w:J

    iget-wide v4, p1, Ll0/c;->x:J

    iput-wide v4, p0, Ll0/c;->x:J

    iget v0, p1, Ll0/c;->y:I

    iput v0, p0, Ll0/c;->y:I

    iget v0, p1, Ll0/c;->m:I

    iput v0, p0, Ll0/c;->m:I

    iget v0, p1, Ll0/c;->F:I

    iput v0, p0, Ll0/c;->F:I

    iget-object v0, p1, Ll0/c;->G:Ljava/lang/String;

    iput-object v0, p0, Ll0/c;->G:Ljava/lang/String;

    iget v0, p1, Ll0/c;->z:I

    iput v0, p0, Ll0/c;->z:I

    iget v0, p1, Ll0/c;->A:I

    iput v0, p0, Ll0/c;->A:I

    iget v0, p1, Ll0/c;->B:I

    iput v0, p0, Ll0/c;->B:I

    iget v0, p1, Ll0/c;->C:I

    iput v0, p0, Ll0/c;->C:I

    iget v0, p1, Ll0/c;->E:I

    iput v0, p0, Ll0/c;->E:I

    iget v0, p1, Ll0/c;->H:I

    iput v0, p0, Ll0/c;->H:I

    iget v0, p1, Ll0/c;->I:I

    iput v0, p0, Ll0/c;->I:I

    iget-object v0, p1, Ll0/c;->J:Ljava/lang/String;

    iput-object v0, p0, Ll0/c;->J:Ljava/lang/String;

    iget-object v0, p1, Ll0/c;->K:Ljava/lang/String;

    iput-object v0, p0, Ll0/c;->K:Ljava/lang/String;

    iget-object v0, p1, Ll0/c;->L:Ljava/lang/String;

    iput-object v0, p0, Ll0/c;->L:Ljava/lang/String;

    iget-object v0, p1, Ll0/c;->q:Ll0/c$e;

    iput-object v0, p0, Ll0/c;->q:Ll0/c$e;

    iget v0, p1, Ll0/c;->r:I

    iput v0, p0, Ll0/c;->r:I

    iget-object v0, p1, Ll0/c;->s:Lo0/n;

    iput-object v0, p0, Ll0/c;->s:Lo0/n;

    iget-object v0, p1, Ll0/c;->t:Ljava/util/ArrayList;

    iput-object v0, p0, Ll0/c;->t:Ljava/util/ArrayList;

    iget-boolean v0, p1, Ll0/c;->P:Z

    iput-boolean v0, p0, Ll0/c;->P:Z

    iget-boolean v0, p1, Ll0/c;->O:Z

    iput-boolean v0, p0, Ll0/c;->O:Z

    iget-object v0, p1, Ll0/c;->N:Ln0/m;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update() - body : ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ll0/c;->N:Ln0/m;

    invoke-virtual {v4}, Ln0/a;->l()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Ll0/c;->N:Ln0/m;

    invoke-virtual {v2}, Ln0/a;->l()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Ll0/c;->N:Ln0/m;

    iput-object v0, p0, Ll0/c;->N:Ln0/m;

    :cond_2
    iget-object v0, p1, Ll0/c;->M:Ln0/m;

    if-eqz v0, :cond_3

    iput-object v0, p0, Ll0/c;->M:Ln0/m;

    :cond_3
    iget v0, p1, Ll0/c;->n:I

    iput v0, p0, Ll0/c;->n:I

    iget-wide v0, p1, Ll0/c;->o:J

    iput-wide v0, p0, Ll0/c;->o:J

    iget-object v0, p1, Ll0/c;->p:Ljava/util/Map;

    iput-object v0, p0, Ll0/c;->p:Ljava/util/Map;

    iget-wide v0, p1, Ll0/c;->Y:J

    iput-wide v0, p0, Ll0/c;->Y:J

    iget-object v0, p1, Ll0/c;->Z:Ljava/lang/String;

    iput-object v0, p0, Ll0/c;->Z:Ljava/lang/String;

    iget v0, p1, Ll0/c;->a0:I

    iput v0, p0, Ll0/c;->a0:I

    iget v0, p1, Ll0/c;->b0:I

    iput v0, p0, Ll0/c;->b0:I

    iget-boolean v0, p1, Ll0/c;->Q:Z

    iput-boolean v0, p0, Ll0/c;->Q:Z

    iget-object v0, p1, Ll0/c;->R:Ljava/lang/String;

    iput-object v0, p0, Ll0/c;->R:Ljava/lang/String;

    iget-object v0, p1, Ll0/c;->S:Ljava/lang/String;

    iput-object v0, p0, Ll0/c;->S:Ljava/lang/String;

    iget-object v0, p1, Ll0/c;->T:Ljava/lang/String;

    iput-object v0, p0, Ll0/c;->T:Ljava/lang/String;

    iget-wide v0, p1, Ll0/c;->U:J

    iput-wide v0, p0, Ll0/c;->U:J

    iget-boolean v0, p1, Ll0/c;->V:Z

    iput-boolean v0, p0, Ll0/c;->V:Z

    iget-object v0, p1, Ll0/c;->c0:Ljava/util/ArrayList;

    iput-object v0, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    iget-wide v0, p1, Ll0/c;->W:J

    iput-wide v0, p0, Ll0/c;->W:J

    iget-wide v0, p1, Ll0/c;->X:J

    iput-wide v0, p0, Ll0/c;->X:J

    iget-object v0, p1, Ll0/c;->e0:Ljava/lang/String;

    iput-object v0, p0, Ll0/c;->e0:Ljava/lang/String;

    iget-object v0, p1, Ll0/c;->d0:Ljava/lang/String;

    iput-object v0, p0, Ll0/c;->d0:Ljava/lang/String;

    iget-wide v0, p1, Ll0/c;->f0:J

    iput-wide v0, p0, Ll0/c;->f0:J

    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/c;->G:Ljava/lang/String;

    return-object v0
.end method

.method public H0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln0/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ll0/c;->h0:Ljava/util/List;

    return-void
.end method

.method public I()I
    .locals 1

    iget v0, p0, Ll0/c;->D:I

    return v0
.end method

.method public final I0(Ljava/io/RandomAccessFile;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Ll0/c;->d:I

    iget-object v1, p0, Ll0/c;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Ll0/c;->d:I

    invoke-static {p1, v1}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Ll0/c;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Ll0/c;->d:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Ll0/c;->d:I

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v1, p0, Ll0/c;->i:I

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v1, p0, Ll0/c;->g:Ljava/lang/String;

    invoke-static {p1, v1}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Ll0/c;->j:Ll0/c$d;

    if-eqz v1, :cond_2

    iget v2, p0, Ll0/c;->d:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Ll0/c;->d:I

    iget-object v1, v1, Ll0/c$d;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-object v1, p0, Ll0/c;->j:Ll0/c$d;

    iget-object v1, v1, Ll0/c$d;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-object v1, p0, Ll0/c;->j:Ll0/c$d;

    iget-object v1, v1, Ll0/c$d;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-object v1, p0, Ll0/c;->j:Ll0/c$d;

    iget v1, v1, Ll0/c$d;->d:I

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :cond_2
    iget-wide v1, p0, Ll0/c;->k:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_3

    iget v3, p0, Ll0/c;->d:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Ll0/c;->d:I

    invoke-static {p1, v1, v2}, Lq0/b;->D(Ljava/io/RandomAccessFile;D)V

    iget-wide v1, p0, Ll0/c;->l:D

    invoke-static {p1, v1, v2}, Lq0/b;->D(Ljava/io/RandomAccessFile;D)V

    :cond_3
    iget-object v1, p0, Ll0/c;->L:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Ll0/c;->d:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Ll0/c;->d:I

    iget-object v1, p0, Ll0/c;->L:Ljava/lang/String;

    invoke-static {p1, v1}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    :cond_4
    iget v1, p0, Ll0/c;->d:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Ll0/c;->d:I

    iget v1, p0, Ll0/c;->m:I

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v1, p0, Ll0/c;->d:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Ll0/c;->d:I

    iget v1, p0, Ll0/c;->n:I

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-wide v1, p0, Ll0/c;->o:J

    invoke-static {p1, v1, v2}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget-object v1, p0, Ll0/c;->q:Ll0/c$e;

    invoke-virtual {v1}, Ll0/c$e;->d()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Ll0/c;->q:Ll0/c$e;

    invoke-virtual {v1}, Ll0/c$e;->c()I

    move-result v1

    if-lez v1, :cond_5

    iget v2, p0, Ll0/c;->d:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Ll0/c;->d:I

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v1, p0, Ll0/c;->q:Ll0/c$e;

    invoke-virtual {v1, p1}, Ll0/c$e;->f(Ljava/io/RandomAccessFile;)V

    :cond_5
    iget v1, p0, Ll0/c;->r:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_6

    iget v2, p0, Ll0/c;->d:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Ll0/c;->d:I

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :cond_6
    invoke-virtual {p0, p1}, Ll0/c;->g0(Ljava/io/RandomAccessFile;)V

    iget-object v1, p0, Ll0/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget v2, p0, Ll0/c;->d:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Ll0/c;->d:I

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :goto_0
    if-ge v0, v1, :cond_7

    iget-object v2, p0, Ll0/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/v;

    invoke-virtual {v2}, Lo0/v;->d()I

    move-result v3

    invoke-static {p1, v3}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {v2, p1}, Lo0/v;->j(Ljava/io/RandomAccessFile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Ll0/c;->f0(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, p1}, Ll0/c;->h0(Ljava/io/RandomAccessFile;)V

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
    instance-of v0, p1, Ll0/c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ll0/c;

    const-string v0, "WCon_WNote"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;->compare(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public J0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/note.note"

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll0/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ll0/c;->b:Ljava/lang/String;

    iget-object p1, p0, Ll0/c;->b:Ljava/lang/String;

    const-string/jumbo v0, "writeWDoc1()"

    invoke-static {v0, p1}, Lq0/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Ll0/c;->i0(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object p1, p0, Ll0/c;->b:Ljava/lang/String;

    const-string v0, "WCon_WNote"

    invoke-static {v0, p1}, Lq0/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method public K()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    return-object v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Ll0/c;->V:Z

    return v0
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Ll0/c;->Q:Z

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Ll0/c;->P:Z

    return v0
.end method

.method public final O(Ljava/io/RandomAccessFile;)V
    .locals 5

    iget-object v0, p0, Ll0/c;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Ll0/c;->d:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v3

    iget-object v4, p0, Ll0/c;->p:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final P(Ljava/io/RandomAccessFile;)V
    .locals 13

    const/4 v0, 0x0

    iput-object v0, p0, Ll0/c;->s:Lo0/n;

    iget v0, p0, Ll0/c;->d:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_3

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v1

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v5

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v6

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v7

    const/4 v8, 0x3

    new-array v9, v8, [F

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v8, :cond_0

    invoke-static {p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v12

    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result p1

    iget v8, p0, Ll0/c;->d:I

    const v11, 0x8000

    and-int/2addr v8, v11

    if-nez v8, :cond_3

    new-instance v8, Lo0/n;

    invoke-direct {v8}, Lo0/n;-><init>()V

    iput-object v8, p0, Ll0/c;->s:Lo0/n;

    iput-object v0, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput v1, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v2, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const/4 v0, 0x1

    if-eqz v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v10

    :goto_1
    iput-boolean v1, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-object v4, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    if-eqz v5, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v10

    :goto_2
    iput-boolean v1, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iput v6, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput v7, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iget-object v1, v8, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v2, v9, v10

    aput v2, v1, v10

    aget v2, v9, v0

    aput v2, v1, v0

    const/4 v0, 0x2

    aget v2, v9, v0

    aput v2, v1, v0

    iput p1, v8, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    :cond_3
    return-void
.end method

.method public final Q(Ljava/io/RandomAccessFile;)V
    .locals 2

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result p1

    :goto_0
    iput p1, p0, Ll0/c;->d:I

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final R(Ljava/io/RandomAccessFile;)V
    .locals 3

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->H:I

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll0/c;->e:Ljava/lang/String;

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->y:I

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    iput-wide v0, p0, Ll0/c;->v:J

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    iput-wide v0, p0, Ll0/c;->x:J

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->z:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->A:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->B:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->C:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->I:I

    new-instance v0, Ln0/m;

    iget-object v1, p0, Ll0/c;->g0:Lk0/b;

    invoke-direct {v0, v1}, Ln0/m;-><init>(Lk0/b;)V

    iput-object v0, p0, Ll0/c;->M:Ln0/m;

    new-instance v0, Ln0/m;

    iget-object v1, p0, Ll0/c;->g0:Lk0/b;

    invoke-direct {v0, v1}, Ln0/m;-><init>(Lk0/b;)V

    iput-object v0, p0, Ll0/c;->N:Ln0/m;

    iget-object v0, p0, Ll0/c;->M:Ln0/m;

    invoke-virtual {p0, p1, v0}, Ll0/c;->W(Ljava/io/RandomAccessFile;Ln0/m;)V

    iget-object v0, p0, Ll0/c;->N:Ln0/m;

    invoke-virtual {p0, p1, v0}, Ll0/c;->W(Ljava/io/RandomAccessFile;Ln0/m;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load - tt = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ll0/c;->M:Ln0/m;

    invoke-virtual {v0}, Ln0/i;->R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WCon_WNote"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load - bodyText Hash = ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll0/c;->N:Ln0/m;

    invoke-virtual {v2}, Ln0/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final S(Ljava/io/RandomAccessFile;)V
    .locals 4

    iget v0, p0, Ll0/c;->d:I

    and-int/lit8 v0, v0, 0x1

    const/16 v1, 0x400

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lq0/b;->y(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll0/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Ll0/c;->f:Ljava/lang/String;

    :cond_0
    iget v0, p0, Ll0/c;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->h:I

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->i:I

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll0/c;->g:Ljava/lang/String;

    :cond_1
    iget v0, p0, Ll0/c;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    new-instance v0, Ll0/c$d;

    invoke-direct {v0}, Ll0/c$d;-><init>()V

    iput-object v0, p0, Ll0/c;->j:Ll0/c$d;

    invoke-static {p1, v1}, Lq0/b;->y(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ll0/c$d;->a:Ljava/lang/String;

    iget-object v0, p0, Ll0/c;->j:Ll0/c$d;

    invoke-static {p1, v1}, Lq0/b;->y(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ll0/c$d;->b:Ljava/lang/String;

    iget-object v0, p0, Ll0/c;->j:Ll0/c$d;

    invoke-static {p1, v1}, Lq0/b;->y(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ll0/c$d;->c:Ljava/lang/String;

    iget-object v0, p0, Ll0/c;->j:Ll0/c$d;

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v2

    iput v2, v0, Ll0/c$d;->d:I

    :cond_2
    iget v0, p0, Ll0/c;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-static {p1}, Lq0/b;->n(Ljava/io/RandomAccessFile;)D

    move-result-wide v2

    iput-wide v2, p0, Ll0/c;->k:D

    invoke-static {p1}, Lq0/b;->n(Ljava/io/RandomAccessFile;)D

    move-result-wide v2

    iput-wide v2, p0, Ll0/c;->l:D

    :cond_3
    iget v0, p0, Ll0/c;->d:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    invoke-static {p1, v1}, Lq0/b;->y(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ll0/c;->L:Ljava/lang/String;

    iget v0, p0, Ll0/c;->d:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->m:I

    :cond_5
    iget v0, p0, Ll0/c;->d:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_6

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->n:I

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    iput-wide v2, p0, Ll0/c;->o:J

    :cond_6
    iget-object v0, p0, Ll0/c;->q:Ll0/c$e;

    invoke-virtual {v0}, Ll0/c$e;->b()V

    iget v0, p0, Ll0/c;->d:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Ll0/c;->q:Ll0/c$e;

    invoke-virtual {v0, p1}, Ll0/c$e;->e(Ljava/io/RandomAccessFile;)V

    :cond_7
    iget v0, p0, Ll0/c;->d:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, p0, Ll0/c;->r:I

    :cond_8
    invoke-virtual {p0, p1}, Ll0/c;->P(Ljava/io/RandomAccessFile;)V

    iget-object v0, p0, Ll0/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Ll0/c;->d:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_9

    new-instance v2, Lo0/v;

    iget-object v3, p0, Ll0/c;->g0:Lk0/b;

    invoke-direct {v2, v3}, Lo0/v;-><init>(Lk0/b;)V

    invoke-virtual {v2, p1}, Lo0/v;->i(Ljava/io/RandomAccessFile;)V

    iget-object v3, p0, Ll0/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, p1}, Ll0/c;->O(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, p1}, Ll0/c;->T(Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public final T(Ljava/io/RandomAccessFile;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Ll0/c;->s:Lo0/n;

    iget v1, v0, Ll0/c;->d:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    invoke-static/range {p1 .. p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v5

    invoke-static/range {p1 .. p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v12

    invoke-static/range {p1 .. p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v13

    const/4 v14, 0x3

    new-array v15, v14, [F

    const/16 v16, 0x0

    move-wide/from16 v17, v1

    move/from16 v1, v16

    :goto_0
    if-ge v1, v14, :cond_0

    invoke-static/range {p1 .. p1}, Lq0/b;->o(Ljava/io/RandomAccessFile;)F

    move-result v2

    aput v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v1

    new-instance v2, Lo0/n;

    invoke-direct {v2}, Lo0/n;-><init>()V

    iput-object v2, v0, Ll0/c;->s:Lo0/n;

    iput-object v4, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput v5, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v6, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const/4 v4, 0x1

    if-eqz v7, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move/from16 v5, v16

    :goto_1
    iput-boolean v5, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-object v8, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    if-eqz v9, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move/from16 v5, v16

    :goto_2
    iput-boolean v5, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iput v10, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput v11, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iput v12, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    if-eqz v13, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move/from16 v5, v16

    :goto_3
    iput-boolean v5, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v6, v15, v16

    aput v6, v5, v16

    aget v6, v15, v4

    aput v6, v5, v4

    const/4 v4, 0x2

    aget v6, v15, v4

    aput v6, v5, v4

    iput v1, v2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    int-to-long v1, v3

    add-long v1, v17, v1

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_4
    return-void
.end method

.method public final U(Ljava/io/RandomAccessFile;)V
    .locals 5

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    invoke-virtual {p0, p1}, Ll0/c;->V(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, p1}, Ll0/c;->Q(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, p1}, Ll0/c;->R(Ljava/io/RandomAccessFile;)V

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, p1}, Ll0/c;->S(Ljava/io/RandomAccessFile;)V

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lq0/b;->k(Ljava/io/RandomAccessFile;I)[B

    move-result-object p1

    iput-object p1, p0, Ll0/c;->u:[B

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadNote - w/h     = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ll0/c;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll0/c;->A:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WCon_WNote"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadNote - ct/mt   = ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ll0/c;->v:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ll0/c;->x:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadNote - dct/dmt = ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ll0/c;->W:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ll0/c;->X:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadNote - ver     = ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ll0/c;->H:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ll0/c;->I:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll0/c;->f()V

    return-void
.end method

.method public final V(Ljava/io/RandomAccessFile;)V
    .locals 3

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lq0/b;->j(Ljava/io/RandomAccessFile;)B

    move-result p1

    :goto_0
    iput p1, p0, Ll0/c;->c:I

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    iget p1, p0, Ll0/c;->c:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Ll0/c;->O:Z

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Ll0/c;->O:Z

    :goto_2
    return-void
.end method

.method public final W(Ljava/io/RandomAccessFile;Ln0/m;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-static {p1, v2}, Lq0/b;->k(Ljava/io/RandomAccessFile;I)[B

    move-result-object v3

    new-instance v4, Lq0/a;

    invoke-direct {v4, v3}, Lq0/a;-><init>([B)V

    const/4 v3, 0x0

    invoke-virtual {p2, v4, v3, v2}, Ln0/m;->v(Lq0/a;II)I

    const-wide/16 v3, 0x4

    add-long/2addr v0, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public final X(Ljava/io/RandomAccessFile;Ln0/m;)V
    .locals 5

    invoke-virtual {p2}, Ln0/m;->x()I

    move-result v0

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    new-instance v3, Lq0/a;

    invoke-direct {v3}, Lq0/a;-><init>()V

    invoke-virtual {v3, v0}, Lq0/a;->F(I)V

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Ln0/m;->w(Lq0/a;I)I

    invoke-virtual {v3}, Lq0/a;->E()[B

    move-result-object p2

    invoke-static {p1, p2, v0}, Lq0/b;->B(Ljava/io/RandomAccessFile;[BI)V

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public Y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isBgColorInverted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ll0/c;->O:Z

    goto/16 :goto_0

    :cond_0
    const-string v1, "formatVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->H:I

    goto/16 :goto_0

    :cond_1
    const-string v1, "fileRevision"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->y:I

    goto/16 :goto_0

    :cond_2
    const-string v1, "modifiedTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/c;->x:J

    goto/16 :goto_0

    :cond_3
    const-string v1, "editTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/c;->w:J

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->z:I

    goto/16 :goto_0

    :cond_5
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->A:I

    goto/16 :goto_0

    :cond_6
    const-string v1, "pageHorizontalPadding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->B:I

    goto/16 :goto_0

    :cond_7
    const-string v1, "pageVerticalPadding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->C:I

    goto/16 :goto_0

    :cond_8
    const-string v1, "minFormatVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->I:I

    goto/16 :goto_0

    :cond_9
    const-string v1, "templateUri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->L:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v1, "lastEditedPageIndex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->m:I

    goto/16 :goto_0

    :cond_b
    const-string v1, "lastEditedPageImageId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->n:I

    goto/16 :goto_0

    :cond_c
    const-string v1, "lastEditedPageTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/c;->o:J

    goto/16 :goto_0

    :cond_d
    const-string v1, "bodyTextFontSizeDelta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->r:I

    goto/16 :goto_0

    :cond_e
    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->E:I

    goto/16 :goto_0

    :cond_f
    const-string v1, "pageMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->D:I

    goto/16 :goto_0

    :cond_10
    const-string v1, "documentType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->F:I

    goto/16 :goto_0

    :cond_11
    const-string v1, "ownerId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->G:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    const-string v1, "isFavorite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ll0/c;->Q:Z

    goto/16 :goto_0

    :cond_13
    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->R:Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    const-string v1, "bookmark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->S:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string v1, "mappedUuid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->T:Ljava/lang/String;

    goto/16 :goto_0

    :cond_16
    const-string v1, "mappedAt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/c;->U:J

    goto/16 :goto_0

    :cond_17
    const-string v1, "isConverted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ll0/c;->V:Z

    goto/16 :goto_0

    :cond_18
    const-string v1, "displayCreatedTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/c;->W:J

    goto/16 :goto_0

    :cond_19
    const-string v1, "displayModifiedTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/c;->X:J

    goto/16 :goto_0

    :cond_1a
    const-string v1, "lastRecognizedDataModifiedTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/c;->Y:J

    goto :goto_0

    :cond_1b
    const-string v1, "fixedFont"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->Z:Ljava/lang/String;

    goto :goto_0

    :cond_1c
    const-string v1, "fixedTextDirection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->a0:I

    goto :goto_0

    :cond_1d
    const-string v1, "fixedBackgroundTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll0/c;->b0:I

    goto :goto_0

    :cond_1e
    const-string v1, "msSyncAccountId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->d0:Ljava/lang/String;

    goto :goto_0

    :cond_1f
    const-string v1, "msSyncDocumentId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->e0:Ljava/lang/String;

    goto :goto_0

    :cond_20
    const-string v1, "msLastSyncTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ll0/c;->f0:J

    :cond_21
    :goto_0
    return-void
.end method

.method public Z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "floatingObjectList"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-static {p1, v3}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    if-eq v4, v0, :cond_3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readBodyObjectsFromXml - invalid eventType = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WCon_WNote"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "object"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-object v4, v1

    :goto_3
    iget-object v5, p0, Ll0/c;->g0:Lk0/b;

    invoke-static {v4, v5}, Ln0/c;->b(Ljava/lang/String;Lk0/b;)Ln0/a;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-static {p1}, Lq0/d;->q(Lorg/xmlpull/v1/XmlPullParser;)I

    return-void

    :cond_6
    invoke-virtual {v4, p1}, Ln0/a;->A(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v5, p0, Ll0/c;->h0:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public a0(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attributes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_b

    :cond_0
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ln0/m;

    iget-object v1, p0, Ll0/c;->g0:Lk0/b;

    invoke-direct {v0, v1}, Ln0/m;-><init>(Lk0/b;)V

    iput-object v0, p0, Ll0/c;->M:Ln0/m;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    iget-object v0, p0, Ll0/c;->M:Ln0/m;

    invoke-virtual {v0, p1}, Ln0/m;->A(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseXml() - tt = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ll0/c;->M:Ln0/m;

    invoke-virtual {v0}, Ln0/i;->R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WCon_WNote"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_1
    const-string v2, "metaData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_17

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll0/c;->f:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "appMajorVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ll0/c;->h:I

    goto :goto_1

    :cond_3
    const-string v2, "appMinorVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ll0/c;->i:I

    goto :goto_1

    :cond_4
    const-string v2, "appPatchName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll0/c;->g:Ljava/lang/String;

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const-string v2, "stringIdList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v4, :cond_b

    new-instance v1, Ll0/c$e;

    invoke-direct {v1}, Ll0/c$e;-><init>()V

    iput-object v1, p0, Ll0/c;->q:Ll0/c$e;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_2
    if-ne v0, v6, :cond_7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    move v1, v3

    move v4, v1

    move-object v8, v5

    :goto_3
    if-ge v1, v0, :cond_a

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    :cond_8
    const-string v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, p0, Ll0/c;->q:Ll0/c$e;

    invoke-virtual {v0, v4, v8}, Ll0/c$e;->a(ILjava/lang/String;)V

    invoke-static {p1, v7}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    invoke-static {p1, v7}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_2

    :cond_b
    const-string v2, "penInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v0, Lo0/n;

    invoke-direct {v0}, Lo0/n;-><init>()V

    iput-object v0, p0, Ll0/c;->s:Lo0/n;

    invoke-virtual {p0, p1}, Ll0/c;->b0(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_b

    :cond_c
    const-string/jumbo v2, "voiceDataList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll0/c;->t:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_5
    if-ne v0, v6, :cond_d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_d
    new-instance v0, Lo0/v;

    iget-object v1, p0, Ll0/c;->g0:Lk0/b;

    invoke-direct {v0, v1}, Lo0/v;-><init>(Lk0/b;)V

    invoke-virtual {v0, p1}, Lo0/v;->h(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v1, p0, Ll0/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v7}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_5

    :cond_e
    const-string v2, "attachedFileList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v1, p0, Ll0/c;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_6
    if-ne v0, v6, :cond_f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :cond_f
    const/4 v3, -0x1

    move v4, v3

    move-object v1, v5

    :goto_7
    if-ne v0, v6, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "attachedFile"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v1, :cond_11

    if-eq v4, v3, :cond_11

    iget-object v0, p0, Ll0/c;->p:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-static {p1, v7}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_6

    :cond_12
    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "key"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {p1}, Lq0/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_13
    const-string v8, "attachedFileId"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lq0/d;->f(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    :cond_14
    :goto_9
    invoke-static {p1, v7}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_7

    :cond_15
    const-string v2, "tagList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    :goto_a
    if-ne v0, v6, :cond_16

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    iget-object v0, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    invoke-static {p1}, Lq0/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v7}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_a

    :cond_17
    :goto_b
    return-void
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ll0/c;->c(Le1/o;)V

    invoke-virtual {p0, p1}, Ll0/c;->e(Le1/o;)V

    return-void
.end method

.method public final b0(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "penInfo"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_10

    const/4 v5, 0x4

    if-eq v0, v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseXml - invalid eventType = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "WCon_WNote"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_10

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v8, "size"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v8

    iput v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    goto/16 :goto_1

    :cond_3
    const-string v8, "color"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto/16 :goto_1

    :cond_4
    const-string v8, "isCurvable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    goto/16 :goto_1

    :cond_5
    const-string v8, "advancedSetting"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v8, "isEraserEnabled"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    goto/16 :goto_1

    :cond_7
    const-string v8, "sizeLevel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    goto/16 :goto_1

    :cond_8
    const-string v8, "particleDensity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    goto/16 :goto_1

    :cond_9
    const-string v8, "particleSize"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v8

    iput v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    goto :goto_1

    :cond_a
    const-string v8, "isFixedWidth"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    goto :goto_1

    :cond_b
    const-string v8, "colorUIInfo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    goto :goto_1

    :cond_c
    const-string v8, "hsv0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v8

    aput v8, v7, v5

    goto :goto_1

    :cond_d
    const-string v8, "hsv1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v8

    aput v8, v7, v4

    goto :goto_1

    :cond_e
    const-string v8, "hsv2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Ll0/c;->s:Lo0/n;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lq0/d;->d(Ljava/lang/String;)F

    move-result v8

    aput v8, v7, v1

    :cond_f
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_10
    :goto_2
    invoke-static {p1, v4}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method

.method public c(Le1/o;)V
    .locals 3

    iget-boolean v0, p0, Ll0/c;->O:Z

    const-string v1, "isBgColorInverted"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget v0, p0, Ll0/c;->H:I

    const-string v1, "formatVersion"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/c;->y:I

    const-string v1, "fileRevision"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-wide v0, p0, Ll0/c;->x:J

    const-string v2, "modifiedTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget-wide v0, p0, Ll0/c;->w:J

    const-string v2, "editTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget v0, p0, Ll0/c;->z:I

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/c;->A:I

    const-string v1, "height"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/c;->B:I

    const-string v1, "pageHorizontalPadding"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/c;->C:I

    const-string v1, "pageVerticalPadding"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/c;->I:I

    const-string v1, "minFormatVersion"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Ll0/c;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll0/c;->L:Ljava/lang/String;

    const-string v1, "templateUri"

    invoke-virtual {p1, v1, v0}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Ll0/c;->m:I

    const-string v1, "lastEditedPageIndex"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/c;->n:I

    const-string v1, "lastEditedPageImageId"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-wide v0, p0, Ll0/c;->o:J

    const-string v2, "lastEditedPageTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget v0, p0, Ll0/c;->r:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const-string v1, "bodyTextFontSizeDelta"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Ll0/c;->E:I

    const-string v1, "orientation"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/c;->D:I

    const-string v1, "pageMode"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/c;->F:I

    const-string v1, "documentType"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Ll0/c;->G:Ljava/lang/String;

    const-string v1, "ownerId"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Ll0/c;->Y:J

    const-string v2, "lastRecognizedDataModifiedTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget-object v0, p0, Ll0/c;->Z:Ljava/lang/String;

    const-string v1, "fixedFont"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Ll0/c;->a0:I

    const-string v1, "fixedTextDirection"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget v0, p0, Ll0/c;->b0:I

    const-string v1, "fixedBackgroundTheme"

    invoke-virtual {p1, v1, v0}, Le1/o;->b(Ljava/lang/String;I)V

    iget-boolean v0, p0, Ll0/c;->Q:Z

    const-string v1, "isFavorite"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-object v0, p0, Ll0/c;->R:Ljava/lang/String;

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ll0/c;->S:Ljava/lang/String;

    const-string v1, "bookmark"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ll0/c;->T:Ljava/lang/String;

    const-string v1, "mappedUuid"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Ll0/c;->U:J

    const-string v2, "mappedAt"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget-boolean v0, p0, Ll0/c;->V:Z

    const-string v1, "isConverted"

    invoke-virtual {p1, v1, v0}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-wide v0, p0, Ll0/c;->W:J

    const-string v2, "displayCreatedTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget-wide v0, p0, Ll0/c;->X:J

    const-string v2, "displayModifiedTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget-object v0, p0, Ll0/c;->d0:Ljava/lang/String;

    const-string v1, "msSyncAccountId"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ll0/c;->e0:Ljava/lang/String;

    const-string v1, "msSyncDocumentId"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Ll0/c;->f0:J

    const-string v2, "msLastSyncTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public c0(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "attributes"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p1, v3}, Ll0/c;->Y(Lorg/xmlpull/v1/XmlPullParser;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseXml() - end - ct/mt = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ll0/c;->v:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Ll0/c;->x:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "], dct/dmt = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Ll0/c;->W:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ll0/c;->X:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "WCon_WNote"

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_1
    :goto_1
    invoke-static {p1, v1}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    iget p1, p0, Ll0/c;->H:I

    const-string v0, ", current version = "

    const/16 v1, 0xfa0

    if-le p1, v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version mismatch. parsed version = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ll0/c;->H:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Ll0/c;->H:I

    :cond_3
    iget p1, p0, Ll0/c;->I:I

    if-gt p1, v1, :cond_4

    return-void

    :cond_4
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseXml - UnsupportedVersion!!! - required version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ll0/c;->I:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-eq v5, v0, :cond_6

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseXml - invalid eventType = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Ll0/c;->a0(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public collectVariables()Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v2, p0, Ll0/c;->e:Ljava/lang/String;

    const-string v3, "mNoteID"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v2, p0, Ll0/c;->f:Ljava/lang/String;

    const-string v3, "mAppName"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v2, p0, Ll0/c;->g:Ljava/lang/String;

    const-string v3, "mAppPatchName"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/c;->h:I

    const-string v3, "mAppMajorVersion"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/c;->i:I

    const-string v3, "mAppMinorVersion"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;

    iget-object v2, p0, Ll0/c;->j:Ll0/c$d;

    const-string v3, "mAuthorInfo"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;

    iget-object v2, p0, Ll0/c;->M:Ln0/m;

    const-string v3, "mTitleObject"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$DoubleVar;

    iget-wide v2, p0, Ll0/c;->k:D

    const-string v4, "mGeoLatitude"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$DoubleVar;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$DoubleVar;

    iget-wide v2, p0, Ll0/c;->l:D

    const-string v4, "mGeoLongitude"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$DoubleVar;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/c;->m:I

    const-string v3, "mLastEditedPageIndex"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/c;->n:I

    const-string v3, "mLastEditedPageImageId"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    iget-wide v2, p0, Ll0/c;->o:J

    const-string v4, "mLastEditedPageTime"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Ll0/c$c;

    iget-object v2, p0, Ll0/c;->p:Ljava/util/Map;

    const-string v3, "mAttachedFileMap"

    invoke-direct {v1, p0, v3, v2}, Ll0/c$c;-><init>(Ll0/c;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/c;->z:I

    const-string v3, "mWidth"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/c;->A:I

    const-string v3, "mHeight"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/c;->B:I

    const-string v3, "mPageHorizontalPadding"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/c;->C:I

    const-string v3, "mPageVerticalPadding"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;

    iget-object v2, p0, Ll0/c;->q:Ll0/c$e;

    const-string v3, "mStringIDManager"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v2, p0, Ll0/c;->r:I

    const-string v3, "mBodyTextFontSizeDelta"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;

    iget-object v2, p0, Ll0/c;->s:Lo0/n;

    const-string v3, "mPenInfo"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Ll0/c$b;

    iget-object v2, p0, Ll0/c;->t:Ljava/util/ArrayList;

    const-string v3, "mVoiceDataList"

    invoke-direct {v1, p0, v3, v2}, Ll0/c$b;-><init>(Ll0/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v2, p0, Ll0/c;->O:Z

    const-string v3, "mIsBgColorInverted"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    new-instance v1, Ll0/c$a;

    iget-object v2, p0, Ll0/c;->h0:Ljava/util/List;

    const-string v3, "mBodyObjectList"

    invoke-direct {v1, p0, v3, v2}, Ll0/c$a;-><init>(Ll0/c;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;->addVar(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object v0

    return-object v0
.end method

.method public d(Le1/o;)V
    .locals 3

    iget-object v0, p0, Ll0/c;->h0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll0/c;->h0:Ljava/util/List;

    const-string v1, "floatingObjectList"

    const-string v2, "object"

    invoke-virtual {p1, v1, v2, v0}, Le1/o;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public d0(Ljava/io/RandomAccessFile;)V
    .locals 2

    const-string v0, "WCon_WNote"

    const-string v1, "readWDoc()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ll0/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/note.note"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ll0/c;->U(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "readWDoc() - cannot access note.note data file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
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

.method public e(Le1/o;)V
    .locals 6

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v1, p0, Ll0/c;->M:Ln0/m;

    const-string v2, "object"

    invoke-virtual {p1, v2, v1}, Le1/o;->l(Ljava/lang/String;Lm0/d;)V

    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    iget-object v0, p0, Ll0/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Ll0/c;->h:I

    if-eq v0, v1, :cond_3

    :cond_0
    const-string v0, "metaData"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v2, p0, Ll0/c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ll0/c;->f:Ljava/lang/String;

    const-string v3, "appName"

    invoke-virtual {p1, v3, v2}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v2, p0, Ll0/c;->h:I

    if-eq v2, v1, :cond_2

    const-string v1, "appMajorVersion"

    invoke-virtual {p1, v1, v2}, Le1/o;->b(Ljava/lang/String;I)V

    iget v1, p0, Ll0/c;->i:I

    const-string v2, "appMinorVersion"

    invoke-virtual {p1, v2, v1}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v1, p0, Ll0/c;->g:Ljava/lang/String;

    const-string v2, "appPatchName"

    invoke-virtual {p1, v2, v1}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Ll0/c;->q:Ll0/c$e;

    if-eqz v0, :cond_5

    iget-object v0, v0, Ll0/c$e;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "stringIdList"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v1, p0, Ll0/c;->q:Ll0/c$e;

    iget-object v1, v1, Ll0/c$e;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "stringId"

    invoke-virtual {p1, v3}, Le1/o;->y(Ljava/lang/String;)V

    const-string v4, "id"

    invoke-virtual {p1, v4, v2}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v4, p0, Ll0/c;->q:Ll0/c$e;

    iget-object v4, v4, Ll0/c$e;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "text"

    invoke-virtual {p1, v4, v2}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Le1/o;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const-string v0, "penInfo"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {p1, v4, v3}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    const-string v4, "size"

    invoke-virtual {p1, v4, v3}, Le1/o;->a(Ljava/lang/String;F)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const-string v4, "color"

    invoke-virtual {p1, v4, v3}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-boolean v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    const-string v4, "isCurvable"

    invoke-virtual {p1, v4, v3}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    const-string v4, "advancedSetting"

    invoke-virtual {p1, v4, v3}, Le1/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-boolean v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    const-string v4, "isEraserEnabled"

    invoke-virtual {p1, v4, v3}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    const-string v4, "sizeLevel"

    invoke-virtual {p1, v4, v3}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    const-string v4, "particleDensity"

    invoke-virtual {p1, v4, v3}, Le1/o;->b(Ljava/lang/String;I)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    const-string v4, "particleSize"

    invoke-virtual {p1, v4, v3}, Le1/o;->a(Ljava/lang/String;F)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-boolean v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    const-string v4, "isFixedWidth"

    invoke-virtual {p1, v4, v3}, Le1/o;->e(Ljava/lang/String;Z)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v3, v3, v1

    const-string v4, "hsv0"

    invoke-virtual {p1, v4, v3}, Le1/o;->a(Ljava/lang/String;F)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v3, v3, v2

    const-string v4, "hsv1"

    invoke-virtual {p1, v4, v3}, Le1/o;->a(Ljava/lang/String;F)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    const-string v4, "hsv2"

    invoke-virtual {p1, v4, v3}, Le1/o;->a(Ljava/lang/String;F)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    const-string v4, "colorUIInfo"

    invoke-virtual {p1, v4, v3}, Le1/o;->b(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Ll0/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Ll0/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "voiceDataList"

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/v;

    invoke-virtual {v3}, Lo0/v;->e()Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v1, :cond_a

    invoke-virtual {p1, v4}, Le1/o;->y(Ljava/lang/String;)V

    move v1, v2

    :cond_a
    invoke-virtual {v3, p1}, Lo0/v;->b(Le1/o;)V

    goto :goto_1

    :cond_b
    if-ne v1, v2, :cond_c

    invoke-virtual {p1, v4}, Le1/o;->g(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Ll0/c;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "attachedFileList"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v1, p0, Ll0/c;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_2

    :cond_d
    const-string v4, "attachedFile"

    invoke-virtual {p1, v4}, Le1/o;->y(Ljava/lang/String;)V

    const-string v5, "key"

    invoke-virtual {p1, v5, v3}, Le1/o;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "attachedFileId"

    invoke-virtual {p1, v3, v2}, Le1/o;->s(Ljava/lang/String;I)V

    invoke-virtual {p1, v4}, Le1/o;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Ll0/c;->c0:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    const-string v1, "tagList"

    const-string v2, "tag"

    invoke-virtual {p1, v1, v2, v0}, Le1/o;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_10
    return-void
.end method

.method public e0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ll0/c;->N:Ln0/m;

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Ll0/c;->N:Ln0/m;

    invoke-virtual {v0}, Ln0/i;->L()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp0/a;

    invoke-virtual {v1}, Lp0/a;->n()Ln0/a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Ll0/c;->h0:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillBodyObjectList - bodyObject is null. span pos["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lp0/a;->o()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lp0/a;->m()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final f0(Ljava/io/RandomAccessFile;)V
    .locals 4

    iget-object v0, p0, Ll0/c;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Ll0/c;->d:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Ll0/c;->d:I

    invoke-static {p1, v0}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Ll0/c;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v2}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ll0/c;->h:I

    return v0
.end method

.method public final g0(Ljava/io/RandomAccessFile;)V
    .locals 2

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Ll0/c;->d:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Ll0/c;->d:I

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-static {p1, v0}, Lq0/b;->E(Ljava/io/RandomAccessFile;F)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0}, Lq0/b;->E(Ljava/io/RandomAccessFile;F)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0}, Lq0/b;->E(Ljava/io/RandomAccessFile;F)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {p1, v0}, Lq0/b;->E(Ljava/io/RandomAccessFile;F)V

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Ll0/c;->i:I

    return v0
.end method

.method public final h0(Ljava/io/RandomAccessFile;)V
    .locals 4

    iget-object v0, p0, Ll0/c;->s:Lo0/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ll0/c;->d:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Ll0/c;->d:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {p1, v3}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-static {p1, v3}, Lq0/b;->E(Ljava/io/RandomAccessFile;F)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {p1, v3}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-boolean v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    invoke-static {p1, v3}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    invoke-static {p1, v3}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-boolean v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    invoke-static {p1, v3}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {p1, v3}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    invoke-static {p1, v3}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-static {p1, v3}, Lq0/b;->E(Ljava/io/RandomAccessFile;F)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-boolean v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    invoke-static {p1, v3}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v3, p0, Ll0/c;->s:Lo0/n;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v2, v3, v2

    invoke-static {p1, v2}, Lq0/b;->E(Ljava/io/RandomAccessFile;F)V

    iget-object v2, p0, Ll0/c;->s:Lo0/n;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {p1, v2}, Lq0/b;->E(Ljava/io/RandomAccessFile;F)V

    iget-object v2, p0, Ll0/c;->s:Lo0/n;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {p1, v2}, Lq0/b;->E(Ljava/io/RandomAccessFile;F)V

    iget-object v2, p0, Ll0/c;->s:Lo0/n;

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    invoke-static {p1, v2}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long v0, v2, v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i0(Ljava/io/RandomAccessFile;)V
    .locals 6

    const-wide/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    iput v0, p0, Ll0/c;->c:I

    iget-boolean v1, p0, Ll0/c;->O:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ll0/c;->c:I

    :cond_0
    iget v0, p0, Ll0/c;->H:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Ll0/c;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget v0, p0, Ll0/c;->y:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-wide v0, p0, Ll0/c;->v:J

    invoke-static {p1, v0, v1}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget-wide v0, p0, Ll0/c;->x:J

    invoke-static {p1, v0, v1}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget v0, p0, Ll0/c;->z:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Ll0/c;->A:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Ll0/c;->B:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Ll0/c;->C:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Ll0/c;->I:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {p0}, Ll0/c;->j0()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save - title, mt = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll0/c;->M:Ln0/m;

    invoke-virtual {v1}, Ln0/a;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WCon_WNote"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ll0/c;->M:Ln0/m;

    invoke-virtual {p0, p1, v0}, Ll0/c;->X(Ljava/io/RandomAccessFile;Ln0/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save - body text, mt = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ll0/c;->N:Ln0/m;

    invoke-virtual {v3}, Ln0/a;->l()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ll0/c;->N:Ln0/m;

    invoke-virtual {p0, p1, v0}, Ll0/c;->X(Ljava/io/RandomAccessFile;Ln0/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save - w/h     = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ll0/c;->z:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ll0/c;->A:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save - ct/mt   = ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Ll0/c;->v:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Ll0/c;->x:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save - dct/dmt = ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Ll0/c;->W:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Ll0/c;->X:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save - ver     = ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ll0/c;->H:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ll0/c;->I:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save - bodyText Hash = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ll0/c;->N:Ln0/m;

    invoke-virtual {v3}, Ln0/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Ll0/c;->I0(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v0, v0

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    iget v1, p0, Ll0/c;->c:I

    invoke-static {p1, v1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-static {p1, v0}, Lq0/b;->z(Ljava/io/RandomAccessFile;I)V

    iget v0, p0, Ll0/c;->d:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v0, v2

    invoke-static {p1, v0}, Lq0/b;->k(Ljava/io/RandomAccessFile;I)[B

    move-result-object v0

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v0}, Lo0/s;->d([B)Lo0/r;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo0/r;->a()[B

    move-result-object v0

    iput-object v0, p0, Ll0/c;->u:[B

    invoke-static {p1, v0}, Lq0/b;->A(Ljava/io/RandomAccessFile;[B)V

    :cond_1
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j0()V
    .locals 5

    iget-object v0, p0, Ll0/c;->h0:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ll0/c;->N:Ln0/m;

    invoke-virtual {v0}, Ln0/i;->L()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Ll0/c;->h0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/a;

    invoke-virtual {v3}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0/a;

    invoke-virtual {v2}, Lp0/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/a;

    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Lp0/a;->q(Ln0/a;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ls0/c;

    const/16 v1, 0x147

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBodyObjectToObjectSpan - Fail to find object ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll0/c;->h0:Ljava/util/List;

    return-object v0
.end method

.method public k0(Ln0/m;)V
    .locals 0

    iput-object p1, p0, Ll0/c;->N:Ln0/m;

    return-void
.end method

.method public l()Ln0/m;
    .locals 1

    iget-object v0, p0, Ll0/c;->N:Ln0/m;

    return-object v0
.end method

.method public l0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll0/c;->S:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/c;->S:Ljava/lang/String;

    return-object v0
.end method

.method public m0(J)V
    .locals 0

    iput-wide p1, p0, Ll0/c;->v:J

    return-void
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Ll0/c;->v:J

    return-wide v0
.end method

.method public n0(J)V
    .locals 0

    iput-wide p1, p0, Ll0/c;->W:J

    return-void
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Ll0/c;->W:J

    return-wide v0
.end method

.method public o0(J)V
    .locals 0

    iput-wide p1, p0, Ll0/c;->X:J

    return-void
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Ll0/c;->X:J

    return-wide v0
.end method

.method public p0(I)V
    .locals 0

    iput p1, p0, Ll0/c;->F:I

    return-void
.end method

.method public q()I
    .locals 1

    iget v0, p0, Ll0/c;->F:I

    return v0
.end method

.method public q0(I)V
    .locals 0

    iput p1, p0, Ll0/c;->b0:I

    return-void
.end method

.method public r()I
    .locals 1

    iget v0, p0, Ll0/c;->b0:I

    return v0
.end method

.method public r0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll0/c;->Z:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/c;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public s0(I)V
    .locals 0

    iput p1, p0, Ll0/c;->a0:I

    return-void
.end method

.method public t()I
    .locals 1

    iget v0, p0, Ll0/c;->a0:I

    return v0
.end method

.method public t0(Z)V
    .locals 0

    iput-boolean p1, p0, Ll0/c;->V:Z

    return-void
.end method

.method public u()I
    .locals 1

    iget v0, p0, Ll0/c;->H:I

    return v0
.end method

.method public u0(Z)V
    .locals 0

    iput-boolean p1, p0, Ll0/c;->P:Z

    return-void
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, Ll0/c;->u:[B

    return-object v0
.end method

.method public v0(Z)V
    .locals 0

    iput-boolean p1, p0, Ll0/c;->Q:Z

    return-void
.end method

.method public w()J
    .locals 2

    iget-wide v0, p0, Ll0/c;->Y:J

    return-wide v0
.end method

.method public w0(J)V
    .locals 0

    iput-wide p1, p0, Ll0/c;->Y:J

    return-void
.end method

.method public x()J
    .locals 2

    iget-wide v0, p0, Ll0/c;->U:J

    return-wide v0
.end method

.method public x0(J)V
    .locals 0

    iput-wide p1, p0, Ll0/c;->U:J

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/c;->T:Ljava/lang/String;

    return-object v0
.end method

.method public y0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll0/c;->T:Ljava/lang/String;

    return-void
.end method

.method public z()I
    .locals 1

    iget v0, p0, Ll0/c;->I:I

    return v0
.end method

.method public z0(J)V
    .locals 0

    iput-wide p1, p0, Ll0/c;->f0:J

    return-void
.end method
