.class public Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/network/networkutils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public e:Ljava/io/InputStream;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:La2/g$a;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;

.field public o:Lorg/apache/http/HttpEntity;

.field public p:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

.field public q:Lorg/apache/http/entity/mime/MultipartEntityBuilder;


# direct methods
.method public constructor <init>(La2/g$a;Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->h:La2/g$a;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->n()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->a:Ljava/util/Map;

    invoke-virtual {p1}, La2/g$a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lx2/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lx2/e;->p()La2/g$a;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->h:La2/g$a;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->n()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->a:Ljava/util/Map;

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->h:La2/g$a;

    invoke-virtual {p1}, La2/g$a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->a:Ljava/util/Map;

    const-string v1, "Accept"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b(Ln0/k;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->m()V

    invoke-virtual {p1}, Ln0/k;->M()Lcom/samsung/android/app/notes/sync/network/networkutils/g;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->p:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->c(Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ln0/a;->l()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/notes/sync/network/networkutils/m;

    sget-object v2, Lorg/apache/http/entity/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/http/entity/ContentType;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->b()I

    move-result v3

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/m;-><init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->q:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    const-string v0, "strokeResource"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ls0/c;

    const/16 v1, 0x138

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->m()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->q:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    sget-object v1, Lorg/apache/http/entity/ContentType;->APPLICATION_XML:Lorg/apache/http/entity/ContentType;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addTextBody(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/ContentType;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->k:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f()Lcom/samsung/android/app/notes/sync/network/networkutils/h;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->g:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/network/networkutils/h;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->n(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->e:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->g(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->q(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->h(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->p(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->d(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->e(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->k(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->c(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->m:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->m(Lcom/samsung/android/app/notes/sync/network/networkutils/h;I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->n:Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->i(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->o:Lorg/apache/http/HttpEntity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->f(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Lorg/apache/http/HttpEntity;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->p:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->o(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->q:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->j(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Lorg/apache/http/entity/mime/MultipartEntityBuilder;)V

    return-object v0

    :cond_0
    new-instance v0, Ls0/c;

    const-string/jumbo v2, "url is null"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ls0/c;

    const-string v2, "method is required"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->a:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public h()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 1

    const-string v0, "DELETE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->o(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->f()Lcom/samsung/android/app/notes/sync/network/networkutils/h;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->s(Lcom/samsung/android/app/notes/sync/network/networkutils/h;)Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->j:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public k()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 1

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->o(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->f()Lcom/samsung/android/app/notes/sync/network/networkutils/h;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->s(Lcom/samsung/android/app/notes/sync/network/networkutils/h;)Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->a:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->a:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->q:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->q:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    const/16 v0, 0xa

    invoke-static {v0}, Lc3/i;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->q:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->setBoundary(Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data;boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    :cond_0
    return-void
.end method

.method public final n()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;-><init>(Lcom/samsung/android/app/notes/sync/network/networkutils/i;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->h:La2/g$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, La2/g$a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    move-result-object v2

    invoke-virtual {v1}, La2/g$a;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "X-SN-Transaction-ID"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    move-result-object v2

    invoke-virtual {v1}, La2/g$a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "X-SN-Feature-ID"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    goto :goto_0

    :cond_0
    const-string v1, "SyncHttpRequest"

    const-string v2, "no connection info!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 v1, 0xfa0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-sn-sdk-ver"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/utils/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-sn-app-ver"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-sn-xml-ver"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->c:Landroid/content/Context;

    invoke-static {v2}, Lc3/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-sc-network"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->getEncodedDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-sn-model-name"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    move-result-object v1

    invoke-static {}, Lc3/l;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user-agent"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    move-result-object v1

    const-string v2, "Content-Type"

    const-string v3, "application/xml;Charset=utf-8"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/h$d;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public p(Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->n:Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;

    return-object p0
.end method

.method public q()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 1

    const-string v0, "PATCH"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->o(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->f()Lcom/samsung/android/app/notes/sync/network/networkutils/h;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->s(Lcom/samsung/android/app/notes/sync/network/networkutils/h;)Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->o(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->f()Lcom/samsung/android/app/notes/sync/network/networkutils/h;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->s(Lcom/samsung/android/app/notes/sync/network/networkutils/h;)Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 1

    const-string v0, "PUT"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->o(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->f()Lcom/samsung/android/app/notes/sync/network/networkutils/h;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->s(Lcom/samsung/android/app/notes/sync/network/networkutils/h;)Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public u(Lcom/samsung/android/app/notes/sync/network/networkutils/c;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->p:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->f:Ljava/lang/String;

    return-object p0
.end method
