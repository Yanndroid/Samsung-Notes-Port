.class public Lj0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/b;


# instance fields
.field public a:J

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ll0/d;

.field public f:Ll0/c;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll0/e;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Lk0/b;

.field public k:Lo0/q;

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Landroid/content/Context;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:J

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj0/a;->b:Z

    const-string v1, ""

    iput-object v1, p0, Lj0/a;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lj0/a;->d:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj0/a;->h:Ljava/util/List;

    iput-boolean v0, p0, Lj0/a;->i:Z

    iput-boolean v0, p0, Lj0/a;->p:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj0/a;->b:Z

    const-string v1, ""

    iput-object v1, p0, Lj0/a;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lj0/a;->d:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj0/a;->h:Ljava/util/List;

    iput-boolean v0, p0, Lj0/a;->i:Z

    iput-boolean v0, p0, Lj0/a;->p:Z

    if-eqz p1, :cond_4

    iput-object p2, p0, Lj0/a;->q:Ljava/lang/String;

    iput-object p1, p0, Lj0/a;->m:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lj0/a;->l:Ljava/util/Map;

    invoke-virtual {p0}, Lj0/a;->o()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lj0/a;->m:Landroid/content/Context;

    invoke-static {v0}, Lj0/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, ")"

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeWDoc - fail to make out cache folder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "media"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeConverterTempDir - fail to make cache folder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lj0/a;->o:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WDocData - new, hash = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], cp = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lj0/a;->o:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WCon_WDocData"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lk0/b;

    iget-object p2, p0, Lj0/a;->o:Ljava/lang/String;

    invoke-direct {p1, p2}, Lk0/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lj0/a;->j:Lk0/b;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WDocData() - context is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "xmlConvert"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll0/e;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/e;

    invoke-virtual {v1}, Ll0/e;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj0/a;->t:Ljava/lang/String;

    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 8

    const-string v0, "bodyText"

    const-string v1, "id"

    const-string v2, "NoteResource"

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    const/16 v4, 0x146

    :try_start_0
    new-instance v5, Le1/p;

    invoke-direct {v5, v3}, Le1/p;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5, v2}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v3, p0, Lj0/a;->q:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "syncModifiedTime"

    iget-wide v6, p0, Lj0/a;->r:J

    invoke-virtual {v5, v3, v6, v7}, Le1/o;->c(Ljava/lang/String;J)V

    const-string v3, "createdTime"

    iget-wide v6, p0, Lj0/a;->a:J

    invoke-virtual {v5, v3, v6, v7}, Le1/o;->c(Ljava/lang/String;J)V

    const-string v3, "isLocked"

    iget-boolean v6, p0, Lj0/a;->b:Z

    invoke-virtual {v5, v3, v6}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string v3, "isEncrypted"

    iget-boolean v6, p0, Lj0/a;->d:Z

    invoke-virtual {v5, v3, v6}, Le1/o;->e(Ljava/lang/String;Z)V

    const-string v3, "ownerId"

    iget-object v6, p0, Lj0/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "xmlVer"

    sget v6, Lk0/b;->d:I

    invoke-virtual {v5, v3, v6}, Le1/o;->b(Ljava/lang/String;I)V

    const-string v3, "noteTree"

    iget-object v6, p0, Lj0/a;->e:Ll0/d;

    invoke-virtual {v5, v3, v6}, Le1/o;->l(Ljava/lang/String;Lm0/d;)V

    const-string v3, "contentFileList"

    const-string v6, "contentFile"

    iget-object v7, p0, Lj0/a;->j:Lk0/b;

    iget-object v7, v7, Lk0/b;->b:Lk0/a;

    invoke-virtual {v7}, Lk0/a;->g()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v3, v6, v7}, Le1/o;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string v3, "attributes"

    iget-object v6, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v5, v3, v6}, Le1/o;->l(Ljava/lang/String;Lm0/d;)V

    const-string v3, "pageList"

    const-string v6, "page"

    iget-object v7, p0, Lj0/a;->h:Ljava/util/List;

    invoke-virtual {v5, v3, v6, v7}, Le1/o;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v3, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v3, v5}, Ll0/c;->d(Le1/o;)V

    iget-object v3, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v3}, Ll0/c;->l()Ln0/m;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v5, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v3, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v3}, Ll0/c;->l()Ln0/m;

    move-result-object v3

    invoke-virtual {v3}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "object"

    iget-object v3, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v3}, Ll0/c;->l()Ln0/m;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Le1/o;->l(Ljava/lang/String;Lm0/d;)V

    invoke-virtual {v5, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v5, v2}, Le1/o;->g(Ljava/lang/String;)V

    invoke-virtual {v5}, Le1/o;->h()V

    invoke-virtual {v5}, Le1/o;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "WCon_WDocData"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ls0/c;

    invoke-direct {v1, v4, v0}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_1
    new-instance v0, Ls0/c;

    const-string v1, "Fail to init XMLObject"

    invoke-direct {v0, v4, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public C(Lj0/a;)V
    .locals 8

    new-instance v0, Lk0/d;

    invoke-direct {v0, p0, p1}, Lk0/d;-><init>(Lj0/a;Lj0/a;)V

    iget-wide v1, p1, Lj0/a;->a:J

    iput-wide v1, p0, Lj0/a;->a:J

    iget-boolean v1, p1, Lj0/a;->b:Z

    iput-boolean v1, p0, Lj0/a;->b:Z

    iget-boolean v1, p1, Lj0/a;->d:Z

    iput-boolean v1, p0, Lj0/a;->d:Z

    iget-object v1, p1, Lj0/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lj0/a;->c:Ljava/lang/String;

    iget-wide v1, p1, Lj0/a;->r:J

    iput-wide v1, p0, Lj0/a;->r:J

    iget-object v1, p1, Lj0/a;->s:Ljava/lang/String;

    iput-object v1, p0, Lj0/a;->s:Ljava/lang/String;

    iget-object v1, p1, Lj0/a;->t:Ljava/lang/String;

    iput-object v1, p0, Lj0/a;->t:Ljava/lang/String;

    iget-object v1, p1, Lj0/a;->e:Ll0/d;

    iput-object v1, p0, Lj0/a;->e:Ll0/d;

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    iget-object v2, p1, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1, v2}, Ll0/c;->G0(Ljava/lang/Object;)V

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    iget-object v2, p1, Lj0/a;->e:Ll0/d;

    iget-object v2, v2, Ll0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lk0/d;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll0/c;->H0(Ljava/util/List;)V

    iget-object v1, p1, Lj0/a;->e:Ll0/d;

    iget-object v1, v1, Ll0/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lk0/d;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update() - page : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] => ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "WCon_WDocData"

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lj0/a;->h:Ljava/util/List;

    invoke-static {v0}, Lj0/a;->k(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lj0/a;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Lj0/a;->e:Ll0/d;

    iget-object v1, v1, Ll0/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll0/d$c;

    iget-object v5, v5, Ll0/d$a;->a:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lj0/a;->j:Lk0/b;

    iget-object v1, v1, Lk0/b;->b:Lk0/a;

    invoke-virtual {v1}, Lk0/a;->g()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update() - contentFile : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/a;

    invoke-virtual {v2}, Ll0/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/a;

    iget-object v2, p0, Lj0/a;->j:Lk0/b;

    iget-object v2, v2, Lk0/b;->b:Lk0/a;

    invoke-virtual {v2, v1}, Lk0/a;->n(Ll0/a;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lj0/a;->j:Lk0/b;

    iget-object v0, v0, Lk0/b;->b:Lk0/a;

    invoke-virtual {v0}, Lk0/a;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p1, Lj0/a;->k:Lo0/q;

    iput-object p1, p0, Lj0/a;->k:Lo0/q;

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ls0/c;

    const/16 v1, 0x138

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to update contentFileManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final D(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeWDocDirectory - outPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_WDocData"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "writeWDocDirectory() - Cannot create backup file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lj0/a;->o:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "writeWDocDirectory() - Fail to rename to output file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    :cond_5
    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lj0/a;->k:Lo0/q;

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0, v1}, Lo0/q;->m(Ll0/c;)V

    iget-object v0, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v0, p1}, Lo0/q;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final F(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/media/mediaInfo.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeMediaInfo() - filePath["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WCon_WDocData"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->u()I

    move-result v0

    const/16 v3, 0xbb9

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj0/a;->i:Z

    :cond_0
    const-string/jumbo v0, "writeMediaInfo()"

    invoke-static {v0, p1}, Lq0/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v0, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    iget-boolean p1, p0, Lj0/a;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {p1}, Ll0/c;->u()I

    move-result p1

    invoke-static {v0, p1}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    :cond_1
    iget-object p1, p0, Lj0/a;->j:Lk0/b;

    iget-object p1, p1, Lk0/b;->b:Lk0/a;

    invoke-virtual {p1}, Lk0/a;->g()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v0, p1}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    const/4 p1, 0x0

    iget-object v3, p0, Lj0/a;->j:Lk0/b;

    iget-object v3, v3, Lk0/b;->b:Lk0/a;

    invoke-virtual {v3}, Lk0/a;->g()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeMediaInfo() - No.["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lj0/a;->i:Z

    invoke-virtual {v4, v5}, Ll0/a;->s(Z)V

    invoke-virtual {v4, v0}, Ll0/a;->u(Ljava/io/RandomAccessFile;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lj0/a;->i:Z

    if-eqz p1, :cond_3

    const-string p1, "EOFX"

    goto :goto_1

    :cond_3
    const-string p1, "EOF"

    :goto_1
    invoke-static {v0, p1}, Lq0/b;->L(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method public final G(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/pageIdInfo.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writePageIdInfo() - filePath["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_WDocData"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "writePageIdInfo()"

    invoke-static {v0, p1}, Lq0/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->v()[B

    move-result-object v0

    const-wide/16 v3, 0x20

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v2, v0}, Lq0/b;->A(Ljava/io/RandomAccessFile;[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    iget-object v0, p0, Lj0/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Lq0/b;->J(Ljava/io/RandomAccessFile;I)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Lj0/a;->g:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v6}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-object v6, p0, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll0/e;

    invoke-virtual {v6}, Ll0/e;->e()[B

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v2, v6}, Lq0/b;->A(Ljava/io/RandomAccessFile;[B)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    add-long/2addr v6, v3

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {v1, p1}, Lq0/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method public H(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeWDoc - outCachePath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_WDocData"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lj0/a;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj0/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lj0/a;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lj0/a;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lj0/a;->D(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ls0/c;

    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "note["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lj0/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "writeWDoc() - WDocData cache path is invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "writeWDoc() - WDocData is not initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "writeWDoc() - wdocCachePath is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeWDocCache - outCachePath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WCon_WDocData"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0, p1}, Ll0/c;->J0(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeWDocCache >>> >>>> >>> page index = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], id = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ll0/e;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ll0/e;->J(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lj0/a;->G(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lj0/a;->F(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lj0/a;->E(Ljava/lang/String;)V

    const-string/jumbo p1, "writeWDocCache - end"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
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
    instance-of v1, p1, Lj0/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lj0/a;

    iget-wide v3, p0, Lj0/a;->a:J

    iget-wide v5, p1, Lj0/a;->a:J

    cmp-long v1, v3, v5

    const-string v3, "]"

    const-string v4, "WCon_WDocData"

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - mCretedTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lj0/a;->a:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lj0/a;->a:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v1, p0, Lj0/a;->e:Ll0/d;

    iget-object v5, p1, Lj0/a;->e:Ll0/d;

    invoke-static {v1, v5}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, " !! equals() - NE - mNoteTree"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    iget-object v5, p1, Lj0/a;->f:Ll0/c;

    invoke-static {v1, v5}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string p1, " !! equals() - NE - mNote"

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lj0/a;->g:Ljava/util/List;

    iget-object v5, p1, Lj0/a;->g:Ljava/util/List;

    invoke-static {v1, v5}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, " !! equals() - NE - mPageIdList"

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_1
    iget-object v5, p0, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " !! equals() - page index = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] check"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p1, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !! equals() - NE - mPageList - page index = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lj0/a;->j:Lk0/b;

    iget-object v1, v1, Lk0/b;->b:Lk0/a;

    iget-object v3, p1, Lj0/a;->j:Lk0/b;

    iget-object v3, v3, Lk0/b;->b:Lk0/a;

    invoke-static {v1, v3}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string p1, " !! equals() - NE - mContentFileManager"

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lj0/a;->k:Lo0/q;

    iget-object p1, p1, Lj0/a;->k:Lo0/q;

    invoke-static {v1, p1}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, " !! equals() - NE - mEndTag"

    goto/16 :goto_0

    :cond_9
    return v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lj0/a;->j:Lk0/b;

    iget-object v0, v0, Lk0/b;->c:Lk0/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk0/c;->d(Ljava/util/Map;)V

    iget-object v0, p0, Lj0/a;->j:Lk0/b;

    iput-object v1, v0, Lk0/b;->c:Lk0/c;

    iput-object v1, p0, Lj0/a;->j:Lk0/b;

    iput-object v1, p0, Lj0/a;->h:Ljava/util/List;

    return-void
.end method

.method public final b(Ll0/c;)V
    .locals 6

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v1, p0, Lj0/a;->m:Landroid/content/Context;

    iget-object v2, p0, Lj0/a;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/f;

    iget-object v2, p0, Lj0/a;->m:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v2}, Lo0/q;->k()I

    move-result v2

    invoke-virtual {p1, v2}, Ll0/c;->E0(I)V

    iget-object v2, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v2}, Lo0/q;->i()I

    move-result v2

    invoke-virtual {p1, v2}, Ll0/c;->C0(I)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Ll0/c;->v0(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "normal"

    :goto_1
    invoke-virtual {p1, v0}, Ll0/c;->F0(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const-string/jumbo v0, "trashed"

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid state : note = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lj0/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WCon_WDocData"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p0, v4}, Lj0/a;->z(Z)V

    iget-object v0, p0, Lj0/a;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/db/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ld1/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll0/c;->l0(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/a;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/db/f;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll0/c;->y0(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/a;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/db/f;->m(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ll0/c;->x0(J)V

    iget-object v0, p0, Lj0/a;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/db/f;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ll0/c;->t0(Z)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ll0/c;->n0(J)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ll0/c;->o0(J)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getMsSyncAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll0/c;->A0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getMsSyncDocumentUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll0/c;->B0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getMsLastSyncTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ll0/c;->z0(J)V

    :cond_4
    iget-object v0, p0, Lj0/a;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/db/f;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ll0/c;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public c()V
    .locals 9

    new-instance v0, Ll0/d;

    invoke-direct {v0}, Ll0/d;-><init>()V

    iput-object v0, p0, Lj0/a;->e:Ll0/d;

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->u()I

    move-result v1

    iput v1, v0, Ll0/d;->a:I

    iget-object v0, p0, Lj0/a;->e:Ll0/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ll0/d;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/e;

    new-instance v2, Ll0/d$f;

    invoke-direct {v2}, Ll0/d$f;-><init>()V

    invoke-virtual {v1}, Ll0/e;->j()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ll0/d$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ll0/e;->g()J

    move-result-wide v3

    iput-wide v3, v2, Ll0/d$a;->b:J

    invoke-virtual {v1}, Ll0/e;->h()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ll0/d$a;->c:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ll0/d$f;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ll0/e;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/b;

    new-instance v4, Ll0/d$d;

    invoke-direct {v4}, Ll0/d$d;-><init>()V

    invoke-virtual {v3}, Ll0/b;->f()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ll0/d$a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ll0/b;->g()J

    move-result-wide v5

    iput-wide v5, v4, Ll0/d$a;->b:J

    invoke-virtual {v3}, Ll0/b;->h()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ll0/d$a;->c:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Ll0/d$d;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ll0/b;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln0/a;

    new-instance v6, Ll0/d$e;

    invoke-direct {v6}, Ll0/d$e;-><init>()V

    invoke-virtual {v5}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ll0/d$a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ln0/a;->l()J

    move-result-wide v7

    iput-wide v7, v6, Ll0/d$a;->b:J

    invoke-virtual {v5}, Ln0/a;->m()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Ll0/d$a;->c:Ljava/lang/String;

    iget-object v5, v4, Ll0/d$d;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-object v3, v2, Ll0/d$f;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lj0/a;->e:Ll0/d;

    iget-object v1, v1, Ll0/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lj0/a;->e:Ll0/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ll0/d;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lj0/a;->j:Lk0/b;

    iget-object v0, v0, Lk0/b;->b:Lk0/a;

    invoke-virtual {v0}, Lk0/a;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/a;

    new-instance v2, Ll0/d$c;

    invoke-direct {v2}, Ll0/d$c;-><init>()V

    invoke-virtual {v1}, Ll0/a;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ll0/d$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ll0/a;->j()J

    move-result-wide v3

    iput-wide v3, v2, Ll0/d$a;->b:J

    invoke-virtual {v1}, Ll0/a;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ll0/d$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lj0/a;->e:Ll0/d;

    iget-object v1, v1, Ll0/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lj0/a;->e:Ll0/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ll0/d;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/a;

    new-instance v2, Ll0/d$e;

    invoke-direct {v2}, Ll0/d$e;-><init>()V

    invoke-virtual {v1}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ll0/d$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ln0/a;->l()J

    move-result-wide v3

    iput-wide v3, v2, Ll0/d$a;->b:J

    invoke-virtual {v1}, Ln0/a;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ll0/d$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lj0/a;->e:Ll0/d;

    iget-object v1, v1, Ll0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lj0/a;->e:Ll0/d;

    new-instance v1, Ll0/d$b;

    invoke-direct {v1}, Ll0/d$b;-><init>()V

    iput-object v1, v0, Ll0/d;->e:Ll0/d$b;

    iget-object v0, p0, Lj0/a;->e:Ll0/d;

    iget-object v0, v0, Ll0/d;->e:Ll0/d$b;

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->l()Ln0/m;

    move-result-object v1

    invoke-virtual {v1}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ll0/d$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lj0/a;->e:Ll0/d;

    iget-object v0, v0, Ll0/d;->e:Ll0/d$b;

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->l()Ln0/m;

    move-result-object v1

    invoke-virtual {v1}, Ln0/a;->l()J

    move-result-wide v1

    iput-wide v1, v0, Ll0/d$a;->b:J

    iget-object v0, p0, Lj0/a;->e:Ll0/d;

    iget-object v0, v0, Ll0/d;->e:Ll0/d$b;

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->l()Ln0/m;

    move-result-object v1

    invoke-virtual {v1}, Ln0/a;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ll0/d$a;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj0/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj0/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lk0/a;
    .locals 1

    iget-object v0, p0, Lj0/a;->j:Lk0/b;

    iget-object v0, v0, Lk0/b;->b:Lk0/a;

    return-object v0
.end method

.method public h()Lj0/a;
    .locals 3

    new-instance v0, Lj0/a;

    invoke-direct {v0}, Lj0/a;-><init>()V

    iget-object v1, p0, Lj0/a;->m:Landroid/content/Context;

    iput-object v1, v0, Lj0/a;->m:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lj0/a;->l:Ljava/util/Map;

    iget-object v1, p0, Lj0/a;->o:Ljava/lang/String;

    iput-object v1, v0, Lj0/a;->o:Ljava/lang/String;

    new-instance v1, Lk0/b;

    invoke-direct {v1}, Lk0/b;-><init>()V

    iput-object v1, v0, Lj0/a;->j:Lk0/b;

    iget-object v2, p0, Lj0/a;->j:Lk0/b;

    iget-object v2, v2, Lk0/b;->b:Lk0/a;

    iput-object v2, v1, Lk0/b;->b:Lk0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WDocData - downsync, hash = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], cp = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lj0/a;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WCon_WDocData"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj0/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lk0/c;
    .locals 1

    iget-object v0, p0, Lj0/a;->j:Lk0/b;

    iget-object v0, v0, Lk0/b;->c:Lk0/c;

    return-object v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lj0/a;->r:J

    return-wide v0
.end method

.method public final n(Ljava/io/RandomAccessFile;Ljava/lang/String;)Z
    .locals 9

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    int-to-long v5, v2

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasEndTag - EndTag["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] NOT exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WCon_WDocData"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p1, v2}, Lq0/b;->w(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public final o()V
    .locals 4

    const-string v0, "WCon_WDocData"

    const-string v1, "initializeConverterTempDir"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj0/a;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "xmlConvert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeConverterTempDir - fail to make cache folder("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lj0/a;->b:Z

    return v0
.end method

.method public final q()V
    .locals 3

    const-string v0, "WCon_WDocData"

    const-string v1, "loadEndTag - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lo0/q;

    invoke-direct {v1}, Lo0/q;-><init>()V

    iput-object v1, p0, Lj0/a;->k:Lo0/q;

    iget-object v2, p0, Lj0/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo0/q;->l(Ljava/lang/String;)V

    const-string v1, "loadEndTag - end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final r()V
    .locals 7

    const-string v0, "WCon_WDocData"

    const-string v1, "loadMediaInfo - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lj0/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/media/mediaInfo.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadMediaInfo()"

    invoke-static {v0, v2, v1}, Lq0/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "EOFX"

    invoke-virtual {p0, v2, v1}, Lj0/a;->n(Ljava/io/RandomAccessFile;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj0/a;->i:Z

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_0
    invoke-static {v2}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    new-instance v4, Ll0/a;

    invoke-virtual {p0}, Lj0/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ll0/a;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lj0/a;->i:Z

    invoke-virtual {v4, v5}, Ll0/a;->s(Z)V

    invoke-virtual {v4, v2}, Ll0/a;->q(Ljava/io/RandomAccessFile;)V

    iget-object v5, p0, Lj0/a;->j:Lk0/b;

    iget-object v5, v5, Lk0/b;->b:Lk0/a;

    iget-object v6, p0, Lj0/a;->n:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lk0/a;->a(Ljava/lang/String;Ll0/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    const-string v1, "loadMediaInfo - end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public final s()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj0/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pageIdInfo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_WDocData"

    const-string v2, "loadPageIdInfo()"

    invoke-static {v1, v2, v0}, Lq0/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj0/a;->g:Ljava/util/List;

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x20

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v1}, Lq0/b;->u(Ljava/io/RandomAccessFile;)I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    const/16 v5, 0x400

    invoke-static {v1, v5}, Lq0/b;->y(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lj0/a;->g:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public t(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    iget-boolean v0, p0, Lj0/a;->p:Z

    if-nez v0, :cond_1a

    const-string v0, "WCon_WDocData"

    const-string v1, "parseXml() - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lo0/q;

    invoke-direct {v1}, Lo0/q;-><init>()V

    iput-object v1, p0, Lj0/a;->k:Lo0/q;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NoteResource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v1, v4, :cond_1

    if-eq v1, v5, :cond_16

    const/4 v4, 0x4

    if-eq v1, v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseXml - invalid eventType = ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_9

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lj0/a;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v8, "syncModifiedTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lj0/a;->r:J

    goto :goto_1

    :cond_3
    const-string v8, "createdTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lj0/a;->a:J

    goto :goto_1

    :cond_4
    const-string v8, "isLocked"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lj0/a;->b:Z

    goto :goto_1

    :cond_5
    const-string v8, "isEncrypted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lj0/a;->d:Z

    goto :goto_1

    :cond_6
    const-string v8, "ownerId"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lj0/a;->c:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string/jumbo v8, "xmlVer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lj0/a;->j:Lk0/b;

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lk0/b;->a(I)V

    :cond_8
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    iget-boolean v2, p0, Lj0/a;->d:Z

    if-nez v2, :cond_a

    goto/16 :goto_2

    :cond_a
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v0, "parseXml - Can\'t support encrypted file at this version"

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string v2, "noteTree"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ll0/d;

    iget-object v4, p0, Lj0/a;->j:Lk0/b;

    invoke-direct {v2, v4}, Ll0/d;-><init>(Lk0/b;)V

    iput-object v2, p0, Lj0/a;->e:Ll0/d;

    invoke-virtual {v2, p1}, Ll0/d;->j(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    :cond_c
    const-string v2, "contentFileList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lj0/a;->j:Lk0/b;

    iget-object v2, v2, Lk0/b;->b:Lk0/a;

    invoke-virtual {v2}, Lk0/a;->l()V

    goto/16 :goto_2

    :cond_d
    const-string v2, "contentFile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ll0/a;

    iget-object v4, p0, Lj0/a;->o:Ljava/lang/String;

    invoke-direct {v2, v4}, Ll0/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ll0/a;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v4, p0, Lj0/a;->j:Lk0/b;

    iget-object v4, v4, Lk0/b;->b:Lk0/a;

    invoke-virtual {v2}, Ll0/a;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lk0/a;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v2, v6}, Ll0/a;->r(Z)V

    :cond_e
    iget-object v4, p0, Lj0/a;->j:Lk0/b;

    iget-object v4, v4, Lk0/b;->b:Lk0/a;

    invoke-virtual {v4, v2}, Lk0/a;->m(Ll0/a;)V

    goto/16 :goto_2

    :cond_f
    const-string v2, "attributes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Ll0/c;

    iget-object v4, p0, Lj0/a;->j:Lk0/b;

    invoke-direct {v2, v4}, Ll0/c;-><init>(Lk0/b;)V

    iput-object v2, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v2, p1}, Ll0/c;->c0(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v2, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v2}, Ll0/c;->u()I

    move-result v2

    const/16 v4, 0x7f2

    if-lt v2, v4, :cond_10

    goto/16 :goto_2

    :cond_10
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid version, parsed version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", base version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    const-string v2, "pageList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lj0/a;->h:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lj0/a;->g:Ljava/util/List;

    goto :goto_2

    :cond_12
    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ll0/e;

    iget-object v4, p0, Lj0/a;->j:Lk0/b;

    invoke-direct {v2, v4}, Ll0/e;-><init>(Lk0/b;)V

    invoke-virtual {v2, p1}, Ll0/e;->A(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v4, p0, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lj0/a;->g:Ljava/util/List;

    invoke-virtual {v2}, Ll0/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_13
    const-string v2, "floatingObjectList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v2, p1}, Ll0/c;->Z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_14
    const-string v2, "bodyText"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {p1, v6}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    new-instance v2, Ln0/m;

    iget-object v4, p0, Lj0/a;->j:Lk0/b;

    invoke-direct {v2, v4}, Ln0/m;-><init>(Lk0/b;)V

    invoke-virtual {v2, p1}, Ln0/m;->A(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v4, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v4, v2}, Ll0/c;->k0(Ln0/m;)V

    :cond_15
    :goto_2
    move-object v2, v1

    :cond_16
    :goto_3
    invoke-static {p1, v6}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v1

    if-ne v1, v5, :cond_17

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_17
    const-string v4, "downloadUrls"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    if-ne v1, v6, :cond_0

    :cond_18
    iget-object p1, p0, Lj0/a;->f:Ll0/c;

    iget-wide v0, p0, Lj0/a;->a:J

    invoke-virtual {p1, v0, v1}, Ll0/c;->m0(J)V

    iget-object p1, p0, Lj0/a;->f:Ll0/c;

    iget-boolean v0, p0, Lj0/a;->d:Z

    invoke-virtual {p1, v0}, Ll0/c;->u0(Z)V

    iget-object p1, p0, Lj0/a;->f:Ll0/c;

    iget-object v0, p0, Lj0/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ll0/c;->D0(Ljava/lang/String;)V

    iget-object p1, p0, Lj0/a;->k:Lo0/q;

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {p1, v0}, Lo0/q;->m(Ll0/c;)V

    iput-boolean v6, p0, Lj0/a;->p:Z

    return-void

    :cond_19
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "WDocData() - invalid parser."

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "parseXml() - WDocData is already initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "]"

    const-string v2, "WCon_WDocData"

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >>> WDocInfo - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lj0/a;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], ct = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lj0/a;->f:Ll0/c;

    invoke-virtual {v4}, Ll0/c;->n()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "], mt = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lj0/a;->f:Ll0/c;

    invoke-virtual {v4}, Ll0/c;->A()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "], st = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lj0/a;->r:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >>> WDocInfo - Page count = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "], h = ["

    const-string v8, "], t = ["

    const-string v9, "]["

    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll0/e;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " >>> WDocInfo - Page["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ll0/e;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ll0/e;->g()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ll0/e;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " >>> WDocInfo - Layer count = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ll0/e;->f()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ll0/e;->f()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ll0/b;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " >>> WDocInfo - Layer["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ll0/b;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ll0/b;->g()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ll0/b;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " >>> WDocInfo - Object count = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ll0/b;->i()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ll0/b;->i()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln0/a;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " >>> WDocInfo - Object["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ln0/a;->p()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v5

    invoke-virtual {v13}, Ln0/a;->l()J

    move-result-wide v4

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ln0/a;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    goto :goto_2

    :cond_0
    move/from16 v16, v5

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_1
    move/from16 v16, v5

    add-int/lit8 v5, v16, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v3, v1, Lj0/a;->j:Lk0/b;

    iget-object v3, v3, Lk0/b;->b:Lk0/a;

    invoke-virtual {v3}, Lk0/a;->g()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " >>> WDocInfo - ContentFile["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ll0/a;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ll0/a;->k()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ll0/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ll0/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ll0/a;->j()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ll0/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >>> WDocInfo - BodyText["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lj0/a;->f:Ll0/c;

    invoke-virtual {v4}, Ll0/c;->l()Ln0/m;

    move-result-object v4

    invoke-virtual {v4}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lj0/a;->f:Ll0/c;

    invoke-virtual {v4}, Ll0/c;->l()Ln0/m;

    move-result-object v4

    invoke-virtual {v4}, Ln0/a;->l()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lj0/a;->f:Ll0/c;

    invoke-virtual {v4}, Ll0/c;->l()Ln0/m;

    move-result-object v4

    invoke-virtual {v4}, Ln0/a;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 13

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lj0/a;->p:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lj0/a;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getOrientation(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getWidth(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->getHeight(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    if-ne v0, v4, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_0
    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v6, p0, Lj0/a;->m:Landroid/content/Context;

    const/16 v9, 0xbb8

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    move-object v7, p1

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getInternalDirectory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj0/a;->w(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V

    :goto_1
    new-instance p1, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v0, p0, Lj0/a;->m:Landroid/content/Context;

    iget-object v1, p0, Lj0/a;->q:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v0

    iput-wide v0, p0, Lj0/a;->r:J

    iget-object p1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {p0, p1}, Lj0/a;->b(Ll0/c;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "readWDoc() - WDocData is already initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "readWDoc() - wnotePath is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readWDocFromDirectory() start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_WDocData"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lj0/a;->n:Ljava/lang/String;

    iget-boolean v0, p0, Lj0/a;->p:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lj0/a;->r()V

    invoke-virtual {p0}, Lj0/a;->q()V

    iget-object v0, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v0}, Lo0/q;->f()I

    move-result v0

    const/16 v2, 0x7f2

    const-string v3, "]"

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v0}, Lo0/q;->f()I

    move-result v0

    const/16 v2, 0xfa0

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v0}, Lo0/q;->h()I

    move-result v0

    if-gt v0, v2, :cond_1

    new-instance v0, Ll0/c;

    iget-object v2, p0, Lj0/a;->n:Ljava/lang/String;

    iget-object v4, p0, Lj0/a;->j:Lk0/b;

    invoke-direct {v0, v2, v4}, Ll0/c;-><init>(Ljava/lang/String;Lk0/b;)V

    iput-object v0, p0, Lj0/a;->f:Ll0/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ll0/c;->d0(Ljava/io/RandomAccessFile;)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    iget-object v4, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v4}, Lo0/q;->k()I

    move-result v4

    invoke-virtual {v0, v4}, Ll0/c;->E0(I)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    iget-object v4, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v4}, Lo0/q;->i()I

    move-result v4

    invoke-virtual {v0, v4}, Ll0/c;->C0(I)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    iget-object v4, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v4}, Lo0/q;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Ll0/c;->p0(I)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    iget-object v4, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v4}, Lo0/q;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ll0/c;->D0(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    iget-object v4, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v4}, Lo0/q;->g()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ll0/c;->w0(J)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    iget-object v4, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v4}, Lo0/q;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ll0/c;->r0(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    iget-object v4, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v4}, Lo0/q;->e()I

    move-result v4

    invoke-virtual {v0, v4}, Ll0/c;->s0(I)V

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    iget-object v4, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v4}, Lo0/q;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Ll0/c;->q0(I)V

    invoke-virtual {p0}, Lj0/a;->s()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj0/a;->h:Ljava/util/List;

    iget-object v0, p0, Lj0/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readWDoc - page count = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readWDoc - read page ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ll0/e;

    iget-object v6, p0, Lj0/a;->n:Ljava/lang/String;

    iget-object v7, p0, Lj0/a;->g:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lj0/a;->j:Lk0/b;

    invoke-direct {v5, v6, v7, v8}, Ll0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lk0/b;)V

    invoke-virtual {v5, v2}, Ll0/e;->B(Ljava/io/RandomAccessFile;)V

    iget-object v6, p0, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->n()J

    move-result-wide v2

    iput-wide v2, p0, Lj0/a;->a:J

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->N()Z

    move-result v0

    iput-boolean v0, p0, Lj0/a;->d:Z

    iget-object v0, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v0}, Ll0/c;->H()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj0/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lj0/a;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj0/a;->p:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readWDocFromDirectory() end : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readWDocFromDirectory() : A NEW version("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v0}, Lo0/q;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v3}, Lo0/q;->h()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") of file format is detected. Converter version("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") MUST be updated!!"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported new version("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v3}, Lo0/q;->f()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v0}, Lo0/q;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), ver("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Old Version - ver = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj0/a;->k:Lo0/q;

    invoke-virtual {v1}, Lo0/q;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], init ver = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "readWDocFromDirectory() - WDocData is already initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Ll0/d;)Lj0/a;
    .locals 10

    invoke-virtual {p1}, Ll0/d;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->l()Ln0/m;

    move-result-object v1

    invoke-virtual {v1}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->e0()V

    iget-object p1, p1, Ll0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ls0/c;

    const/16 v0, 0x147

    const-string v1, "removeUnchangedData - bodyText is not changed, but request floating object"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln0/a;

    invoke-virtual {v2}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lj0/a;->f:Ll0/c;

    invoke-virtual {v1, p1}, Ll0/c;->H0(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/e;

    invoke-virtual {v2}, Ll0/e;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ll0/e;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll0/b;

    invoke-virtual {v5}, Ll0/b;->f()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ll0/b;->i()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln0/a;

    invoke-virtual {v8}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v6}, Ll0/b;->s(Ljava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v3}, Ll0/e;->H(Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iput-object p1, p0, Lj0/a;->h:Ljava/util/List;

    invoke-static {p1}, Lj0/a;->k(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lj0/a;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lj0/a;->j:Lk0/b;

    iget-object v1, v1, Lk0/b;->b:Lk0/a;

    invoke-virtual {v1}, Lk0/a;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/a;

    invoke-virtual {v2}, Ll0/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/a;

    iget-object v2, p0, Lj0/a;->j:Lk0/b;

    iget-object v2, v2, Lk0/b;->b:Lk0/a;

    invoke-virtual {v2}, Lk0/a;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lj0/a;->l()Lk0/c;

    move-result-object v1

    invoke-virtual {v1}, Lk0/c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln0/k;

    invoke-virtual {v2}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Ln0/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Lj0/a;->l()Lk0/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk0/c;->d(Ljava/util/Map;)V

    return-object p0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj0/a;->s:Ljava/lang/String;

    return-void
.end method

.method public z(Z)V
    .locals 0

    iput-boolean p1, p0, Lj0/a;->b:Z

    return-void
.end method
