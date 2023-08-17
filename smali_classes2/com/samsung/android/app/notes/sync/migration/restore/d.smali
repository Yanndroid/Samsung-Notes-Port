.class public Lcom/samsung/android/app/notes/sync/migration/restore/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RestoreTaskFactory"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/samsung/android/app/notes/sync/migration/restore/b;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/migration/restore/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->v()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->q()Ljava/lang/String;

    move-result-object v2

    and-int/lit16 v3, v1, 0x400

    if-nez v3, :cond_0

    and-int/lit16 v3, v1, 0x800

    if-nez v3, :cond_0

    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {v2}, Lc3/n;->V(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/samsung/android/app/notes/sync/migration/restore/d;->b(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/migration/restore/b;)Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/InstantRestoreDocTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2

    and-int/lit8 v3, v1, 0x40

    if-nez v3, :cond_2

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {v2}, Lc3/n;->V(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/samsung/android/app/notes/sync/migration/restore/d;->b(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/migration/restore/b;)Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/EntireRestoreDocTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_4

    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {v2}, Lc3/n;->M(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/samsung/android/app/notes/sync/migration/restore/d;->b(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/migration/restore/b;)Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreLMemoTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_5

    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {v2}, Lc3/n;->g0(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTMemoTask;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->w()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/samsung/android/app/notes/sync/migration/restore/d;->b(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/migration/restore/b;)Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTMemoTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v3, v1, 0x8

    if-nez v3, :cond_6

    and-int/lit8 v3, v1, 0x10

    if-nez v3, :cond_6

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_7

    :cond_6
    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {v2}, Lc3/n;->P(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/samsung/android/app/notes/sync/migration/restore/d;->b(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/migration/restore/b;)Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreNMemoTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_8

    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {v2}, Lc3/n;->c0(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/samsung/android/app/notes/sync/migration/restore/d;->b(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/migration/restore/b;)Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {v2}, Lc3/n;->Q(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreQMemoTask;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/samsung/android/app/notes/sync/migration/restore/d;->b(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/migration/restore/b;)Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreQMemoTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object p0, Lcom/samsung/android/app/notes/sync/migration/restore/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTasks count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/migration/restore/b;)Lcom/samsung/android/app/notes/sync/migration/restore/b;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->i(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->h(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->f(I)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->v()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->j(I)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->n()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->c(Z)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->o()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->d(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a()Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object p0

    return-object p0
.end method
