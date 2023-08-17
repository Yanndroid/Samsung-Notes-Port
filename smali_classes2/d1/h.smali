.class public Ld1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:J

.field public l:J

.field public m:Ljava/lang/String;

.field public n:I

.field public o:J

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:J

.field public u:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/h;->a:Ljava/lang/String;

    iput-object p2, p0, Ld1/h;->b:Ljava/lang/String;

    iput p3, p0, Ld1/h;->e:I

    iput-wide p4, p0, Ld1/h;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/h;->a:Ljava/lang/String;

    iput-object p2, p0, Ld1/h;->b:Ljava/lang/String;

    iput-wide p3, p0, Ld1/h;->c:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "datakey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld1/h;->a:Ljava/lang/String;

    const-string v0, "filepath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld1/h;->b:Ljava/lang/String;

    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Ld1/h;->e:I

    const-string v0, "clientTimestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ld1/h;->c:J

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    iput p1, p0, Ld1/h;->p:I

    return-void
.end method

.method public B(J)V
    .locals 0

    iput-wide p1, p0, Ld1/h;->u:J

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld1/h;->f:Ljava/lang/String;

    return-void
.end method

.method public D(J)V
    .locals 0

    iput-wide p1, p0, Ld1/h;->d:J

    return-void
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, Ld1/h;->n:I

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld1/h;->m:Ljava/lang/String;

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld1/h;->j:Ljava/lang/String;

    return-void
.end method

.method public H(J)V
    .locals 0

    iput-wide p1, p0, Ld1/h;->k:J

    return-void
.end method

.method public I(J)V
    .locals 0

    iput-wide p1, p0, Ld1/h;->l:J

    return-void
.end method

.method public J(J)V
    .locals 0

    iput-wide p1, p0, Ld1/h;->c:J

    return-void
.end method

.method public K()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "category"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "syncname"

    invoke-virtual {p0}, Ld1/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "syncpath"

    invoke-virtual {p0}, Ld1/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ModifiedTime"

    iget-wide v3, p0, Ld1/h;->c:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "IsFolder"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld1/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld1/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Ld1/h;->t:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld1/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld1/h;->s:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Ld1/h;->i:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Ld1/h;->o:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Ld1/h;->p:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld1/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Ld1/h;->d:J

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld1/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld1/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld1/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Ld1/h;->k:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Ld1/h;->l:J

    return-wide v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Ld1/h;->c:J

    return-wide v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Ld1/h;->e:I

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Ld1/h;->g:Z

    return v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld1/h;->h:Ljava/lang/String;

    return-void
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, Ld1/h;->g:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncItem - localId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld1/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", syncKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld1/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ld1/h;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deleted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld1/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld1/h;->q:Ljava/lang/String;

    return-void
.end method

.method public v(J)V
    .locals 0

    iput-wide p1, p0, Ld1/h;->t:J

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld1/h;->r:Ljava/lang/String;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld1/h;->s:Ljava/lang/String;

    return-void
.end method

.method public y(J)V
    .locals 0

    iput-wide p1, p0, Ld1/h;->i:J

    return-void
.end method

.method public z(J)V
    .locals 0

    iput-wide p1, p0, Ld1/h;->o:J

    return-void
.end method
