.class public Lcom/samsung/android/app/notes/sync/migration/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/migration/c$d;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Ljava/lang/Class;

.field public d:Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;

.field public e:I

.field public f:I

.field public final g:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$a;

.field public final h:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;

.field public final i:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MigrationManager"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->a:Z

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->b:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->c:Ljava/lang/Class;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->d:Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->e:I

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->f:I

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/c$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/migration/c$a;-><init>(Lcom/samsung/android/app/notes/sync/migration/c;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->g:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$a;

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/c$b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/migration/c$b;-><init>(Lcom/samsung/android/app/notes/sync/migration/c;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->h:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/c$c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/migration/c$c;-><init>(Lcom/samsung/android/app/notes/sync/migration/c;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->i:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/migration/c;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->f:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/migration/c;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->e:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/migration/c;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->f:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/migration/c;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->c:Ljava/lang/Class;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/migration/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->a:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/migration/c;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->e:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/sync/migration/c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/c;->s()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/app/notes/sync/migration/c;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/c;->u(Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/app/notes/sync/migration/c;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/migration/c;->A(II)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/app/notes/sync/migration/c;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/migration/c;->B(II)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/app/notes/sync/migration/c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/c;->C(I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/app/notes/sync/migration/c;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/migration/c;->E(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/app/notes/sync/migration/c;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/app/notes/sync/migration/c;->G(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/app/notes/sync/migration/c;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/migration/c;->J(IZ)V

    return-void
.end method

.method public static w()Lcom/samsung/android/app/notes/sync/migration/c;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c$d;->a()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->d:Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnEndImportListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->d:Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;->onEnd()V

    :cond_0
    return-void
.end method

.method public final B(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->d:Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnProgressImportListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->d:Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;->onProgress()V

    :cond_0
    return-void
.end method

.method public final C(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->d:Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnStartImportListener total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->d:Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;->onStart()V

    :cond_0
    return-void
.end method

.method public D(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshTarget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v1

    invoke-interface {v1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/migration/c;->c:Ljava/lang/Class;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const p1, 0x10008000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshTarget failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->c:Ljava/lang/Class;

    goto :goto_2

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->c:Ljava/lang/Class;

    throw p1

    :cond_0
    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string p2, "refreshTarget is ignored, target is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final E(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->ENTIRE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc3/n;->F(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc3/n;->G(I)V

    :goto_0
    return-void
.end method

.method public final F(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->ENTIRE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lc3/n;->H(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2, p4, p5}, Lc3/n;->L(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public final G(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->ENTIRE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5, p6}, Lc3/n;->J(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p1, "com.samsung.android.intent.action.REQUEST_INSTANT_SNAPSHOT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p3, p5, p6}, Lc3/n;->L(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5, p6}, Lc3/n;->K(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public H(Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgressListener listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->d:Lcom/samsung/android/support/senl/nt/base/common/ProgressListener;

    return-void
.end method

.method public I(Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lx1/h;->j(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/c;->z(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {p1}, Lc3/n;->V(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {p1}, Lc3/n;->M(Ljava/lang/String;)V

    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {p1}, Lc3/n;->g0(Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_4

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_4

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {p1}, Lc3/n;->P(Ljava/lang/String;)V

    :cond_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {p1}, Lc3/n;->c0(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final J(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_4

    const/16 v0, 0x80

    if-eq p1, v0, :cond_4

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x400

    if-eq p1, v0, :cond_4

    const/16 v0, 0x800

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_4

    goto :goto_0

    :cond_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc3/n;->U(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc3/n;->O(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc3/n;->e0(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc3/n;->N(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc3/n;->T(Z)V

    :goto_0
    return-void
.end method

.method public K(Landroid/content/Intent;)V
    .locals 9

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lx1/h;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SESSION_KEY"

    invoke-static {p1, v1}, Lx1/a;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SOURCE"

    invoke-static {p1, v2}, Lx1/a;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "EXPORT_SESSION_TIME"

    invoke-static {p1, v2}, Lx1/a;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "SECURITY_LEVEL"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "ACTION"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startBackup received from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Extra params path["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "], security["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], action["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    new-instance v3, Lp1/a$a;

    invoke-direct {v3}, Lp1/a$a;-><init>()V

    invoke-virtual {v3, p1}, Lp1/a$a;->c(Landroid/content/Intent;)Lp1/a$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lp1/a$a;->h(Ljava/lang/String;)Lp1/a$a;

    move-result-object p1

    invoke-virtual {p1, v5}, Lp1/a$a;->g(Ljava/lang/String;)Lp1/a$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lp1/a$a;->e(Ljava/lang/String;)Lp1/a$a;

    move-result-object p1

    invoke-virtual {p1, v6}, Lp1/a$a;->f(Ljava/lang/String;)Lp1/a$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lp1/a$a;->d(I)Lp1/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lp1/a$a;->a()Lp1/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/c;->L(Lp1/a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/c;->S()V

    goto :goto_0

    :cond_1
    const-string v0, "startBackup invalid action, stopped"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lx1/a;->c(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/notes/sync/migration/c;->F(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public final L(Lp1/a;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v1, "startBackup"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->p()Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->s(Lp1/a;)V

    return-void
.end method

.method public M(Landroid/content/Intent;)V
    .locals 9

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx1/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SESSION_KEY"

    invoke-static {p1, v1}, Lx1/a;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SOURCE"

    invoke-static {p1, v2}, Lx1/a;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXPORT_SESSION_TIME"

    invoke-static {p1, v3}, Lx1/a;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SECURITY_LEVEL"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/c;->x(Landroid/content/Intent;)I

    move-result v5

    sget-object v6, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startInstantRestoreMigration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " received from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " extra params path["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "], security["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    invoke-direct {v7}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;-><init>()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->i(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->h(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->f(I)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->j(I)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->c(Z)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->d(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a()Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/d;->a(Lcom/samsung/android/app/notes/sync/migration/restore/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/c;->i:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->setListener(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->p()Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->t(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const-string p1, "startInstantRestoreMigration failed to create restore task"

    invoke-static {v6, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public N(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v1, "startSecureFolderRestoreMigration"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/c;->I(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/c;->O()V

    return-void
.end method

.method public O()V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v1, "startSelfRestoreMigration"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v1

    invoke-interface {v1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isKMemoPackage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "startSelfRestoreMigration don\'t support KMEMO"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "startSelfRestoreMigration don\'t support other corp device"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lx1/e;->d()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    const-string v1, "startSelfRestoreMigration reached MAX_EXCEPTION_COUNT"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lx1/e;->h(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/c;->r()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/c;->s()V

    return-void

    :cond_2
    invoke-static {v1}, Lx1/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSelfRestoreMigration getPromisedRestorePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    invoke-static {v1}, Lc3/n;->S(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/c;->y()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/c;->r()V

    return-void

    :cond_3
    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v1

    const-string v2, "SmartSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->i(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v1

    const-string v2, "SmartSwitchMobile"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->h(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->f(I)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->j(I)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->c(Z)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->d(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a()Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/d;->a(Lcom/samsung/android/app/notes/sync/migration/restore/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/migration/c;->i:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->setListener(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->p()Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->t(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/c;->r()V

    invoke-static {}, Lx1/e;->f()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->a:Z

    if-eqz v1, :cond_5

    if-lez v0, :cond_5

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->g:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$a;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/c;->h:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$a;Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->b:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSelfRestoreMigration checking StrokeRecognizeCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->a:Z

    if-nez v0, :cond_6

    const-string v0, "startSelfRestoreMigration strokeRecognizeTask is still running"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public P(Landroid/content/Intent;)V
    .locals 13

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lx1/h;->j(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "SESSION_KEY"

    invoke-static {p1, v0}, Lx1/a;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "SOURCE"

    invoke-static {p1, v0}, Lx1/a;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "EXPORT_SESSION_TIME"

    invoke-static {p1, v0}, Lx1/a;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "SECURITY_LEVEL"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, p1, v3, v9, v10}, Lcom/samsung/android/app/notes/sync/migration/c;->v(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startSelfRestoreMigration "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " received from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Extra params path["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], security["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v8}, Lcom/samsung/android/app/notes/sync/migration/c;->o(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSelfRestoreMigration proper files are not detected in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lx1/a;->c(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v7

    invoke-static {p1}, Lx1/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/app/notes/sync/migration/c;->G(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0, v9}, Lc3/n;->d0(Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0, v10}, Lc3/n;->X(Ljava/lang/String;)V

    invoke-static {p1}, Lx1/a;->c(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->E(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;I)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/app/notes/sync/migration/c;->R(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public Q(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/c;->O()V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->y()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->c:Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final R(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v1, "startSmartSwitchRestoreMigration"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", "

    const-string v1, "startSmartSwitchRestoreMigration version "

    const/4 v2, 0x1

    if-eq p7, v2, :cond_2

    const/16 v3, 0x80

    if-ne p7, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    const-string v4, "memo_rename.bk"

    const-string v5, "memo.bk"

    if-ne p7, v3, :cond_1

    :try_start_0
    invoke-static {p2, v5}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc3/n;->O(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne p7, v3, :cond_3

    :try_start_1
    invoke-static {p2, v5}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc3/n;->N(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_2
    const-string v3, "sdoc.bk"

    invoke-static {p2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdoc_rename.bk"

    invoke-static {p2, v4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc3/n;->T(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->i(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->h(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p2

    invoke-virtual {p2, p6}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->f(I)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p2

    invoke-virtual {p2, p7}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->j(I)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->c(Z)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->d(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/restore/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b$a;->a()Lcom/samsung/android/app/notes/sync/migration/restore/b;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/d;->a(Lcom/samsung/android/app/notes/sync/migration/restore/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    iget-object p4, p0, Lcom/samsung/android/app/notes/sync/migration/c;->i:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    invoke-virtual {p3, p4}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->setListener(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->p()Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->t(Ljava/util/List;)V

    goto :goto_4

    :cond_5
    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string p2, "startSmartSwitchRestoreMigration failed to create restore task"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public final S()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v1, "stopBackUp"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->p()Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->u()V

    return-void
.end method

.method public T()V
    .locals 2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0}, Lc3/n;->y()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->f:I

    iget v1, p0, Lcom/samsung/android/app/notes/sync/migration/c;->e:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->A(II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->f:I

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/c;->e:I

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->p()Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->v()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v1, "stopMigrationService maintain MigrationService because of isAnyTaskRunning true"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final o(Ljava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string p2, "checkBackUpFile version is none"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v0, v1, :cond_6

    aget-object v3, p1, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "sdoc.bk"

    if-ne p2, v4, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_1
    const/16 v6, 0x8

    const-string v7, "memo.bk"

    if-ne p2, v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_2
    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    const/16 v6, 0x80

    if-ne p2, v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v2, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    :cond_7
    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBackUpFile restoreMemo isValid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public final p(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkMigrationFiles exception "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final q(Ljava/io/File;)I
    .locals 8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->q()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v1, "checkNMemoMigrationFiles unzipped NMemo, didn\'t send NMemo response"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, v2}, Lc3/n;->O(Z)V

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->a()Lx/a;

    move-result-object p1

    invoke-interface {p1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    const-string v4, "com.samsung.android.app.notes"

    const/16 v5, 0x1000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    const-string v7, "android.permission"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    new-array v7, v2, [Ljava/lang/String;

    aput-object v6, v7, v1

    invoke-static {p1, v7}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNMemoMigrationFiles not grant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move p1, v2

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v1

    :goto_3
    if-eqz p1, :cond_5

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, v1}, Lc3/n;->W(Z)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, v2}, Lc3/n;->O(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v1, "checkNMemoMigrationFiles hasAllPermission NMemo will be updated"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :catch_1
    move-exception p1

    move v0, v1

    :goto_4
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNMemoMigrationFiles have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNMemoMigrationFiles unzipped NMemo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->q()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->q()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, v1}, Lc3/n;->W(Z)V

    :cond_7
    move v0, v1

    :goto_6
    return v0
.end method

.method public final r()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v1, "clearBnRFiles start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->y()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "clearBnRFiles no task running, delete path"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->m()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->x()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->w()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->v()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->s()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->r()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->t()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    :cond_0
    const-string v1, "clearBnRFiles end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final s()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v1, "clearRetryFiles"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/migration/c;->t(Ljava/io/File;)V

    return-void
.end method

.method public final t(Ljava/io/File;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final u(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpErrorCodes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final v(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "/SamsungNote/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This model name is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SM-J250"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "SM-A530"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "SM-A730"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x80

    goto :goto_1

    :cond_3
    const-string v0, "/NMemo/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x8

    goto :goto_1

    :cond_4
    const-string v0, "/Etc/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    sget-object p2, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v0, "getRestoreVersion not exist proper folder"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lx1/a;->c(Landroid/content/Intent;)Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object v2

    invoke-static {p1}, Lx1/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/notes/sync/migration/c;->G(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final x(Landroid/content/Intent;)I
    .locals 1

    invoke-static {p1}, Lx1/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.intent.action.REQUEST_INSTANT_SNAPSHOT"

    if-ne p1, v0, :cond_0

    const/16 p1, 0x1000

    return p1

    :cond_0
    const/16 p1, 0x400

    return p1
.end method

.method public final y()I
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v2, "getMigrationMask"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3}, Lc3/n;->w()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMemo.exml"

    invoke-static {v3, v4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v5

    invoke-virtual {v5}, Lc3/n;->i()Ljava/lang/String;

    move-result-object v5

    const-string v6, "memo.bk"

    invoke-static {v5, v6}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v7

    invoke-virtual {v7}, Lc3/n;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "memo.db"

    invoke-static {v7, v8}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v8

    invoke-virtual {v8}, Lc3/n;->p()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sdoc.bk"

    invoke-static {v8, v9}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v10

    invoke-virtual {v10}, Lc3/n;->e()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v11

    invoke-virtual {v11}, Lc3/n;->j()Ljava/lang/String;

    move-result-object v11

    const-string v12, "QuickMemoPlusBackup.json"

    invoke-static {v11, v12}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v13

    invoke-virtual {v13}, Lc3/n;->m()Ljava/lang/String;

    move-result-object v13

    const-string v14, "sdoc.list"

    invoke-static {v13, v14}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v14

    invoke-virtual {v14}, Lc3/n;->m()Ljava/lang/String;

    move-result-object v14

    const-string v15, "category.list"

    invoke-static {v14, v15}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v14

    invoke-virtual {v14}, Lc3/n;->y()Z

    move-result v14

    const/16 v16, 0x0

    if-nez v14, :cond_5

    const-string v14, "getMigrationMask restore task is not running"

    invoke-static {v1, v14}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v14

    invoke-virtual {v14}, Lc3/n;->w()Ljava/lang/String;

    move-result-object v14

    const-string v15, "TMemo_rename.exml"

    invoke-virtual {v0, v2, v14, v4, v15}, Lcom/samsung/android/app/notes/sync/migration/c;->p(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc3/n;->e0(Z)V

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move/from16 v2, v16

    :goto_0
    or-int/lit8 v2, v2, 0x0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->i()Ljava/lang/String;

    move-result-object v4

    const-string v14, "memo_rename.bk"

    invoke-virtual {v0, v3, v4, v6, v14}, Lcom/samsung/android/app/notes/sync/migration/c;->p(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc3/n;->O(Z)V

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    move/from16 v3, v16

    :goto_1
    or-int/2addr v2, v3

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/notes/sync/migration/c;->q(Ljava/io/File;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3}, Lc3/n;->p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdoc_rename.bk"

    invoke-virtual {v0, v7, v3, v9, v4}, Lcom/samsung/android/app/notes/sync/migration/c;->p(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc3/n;->T(Z)V

    or-int/2addr v2, v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3}, Lc3/n;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3, v6, v14}, Lcom/samsung/android/app/notes/sync/migration/c;->p(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc3/n;->N(Z)V

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :cond_2
    move/from16 v3, v16

    :goto_2
    or-int/2addr v2, v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3}, Lc3/n;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickMemoPlusBackup_rename.json"

    invoke-virtual {v0, v10, v3, v12, v4}, Lcom/samsung/android/app/notes/sync/migration/c;->p(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc3/n;->R(Z)V

    if-eqz v3, :cond_3

    const/16 v16, 0x200

    :cond_3
    or-int v2, v2, v16

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "getMigrationMask retry"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lc3/n;->T(Z)V

    or-int/lit8 v2, v2, 0x40

    :cond_4
    move/from16 v16, v2

    goto :goto_3

    :cond_5
    const-string v2, "getMigrationMask restore task is running"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move/from16 v2, v16

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3}, Lc3/n;->B()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->v()Ljava/lang/String;

    move-result-object v4

    const-string v5, "snb"

    invoke-virtual {v3, v4, v5}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->t()Ljava/lang/String;

    move-result-object v4

    const-string v5, "spd"

    invoke-virtual {v3, v4, v5}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lc3/n;->U(Z)V

    or-int/lit16 v2, v2, 0x100

    goto :goto_4

    :cond_7
    const-string v3, "getMigrationMask SmartSwitchSnbSpdImporting"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMigrationMask result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final z(Ljava/lang/String;)I
    .locals 11

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRestoreMask targetPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/io/File;

    if-eqz v1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3}, Lc3/n;->w()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "TMemo.exml"

    invoke-static {v3, v4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    if-eqz v1, :cond_1

    move-object v4, p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->i()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v5, "memo.bk"

    invoke-static {v4, v5}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    if-eqz v1, :cond_2

    move-object v6, p1

    goto :goto_2

    :cond_2
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v6

    invoke-virtual {v6}, Lc3/n;->p()Ljava/lang/String;

    move-result-object v6

    :goto_2
    const-string v7, "sdoc.bk"

    invoke-static {v6, v7}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    if-eqz v1, :cond_3

    move-object v7, p1

    goto :goto_3

    :cond_3
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v7

    invoke-virtual {v7}, Lc3/n;->e()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-static {v7, v5}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v7

    invoke-virtual {v7}, Lc3/n;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "memo.db"

    invoke-static {v7, v8}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v8

    invoke-virtual {v8}, Lc3/n;->m()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sdoc.list"

    invoke-static {v8, v9}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v9

    invoke-virtual {v9}, Lc3/n;->m()Ljava/lang/String;

    move-result-object v9

    const-string v10, "category.list"

    invoke-static {v9, v10}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v10

    invoke-virtual {v10}, Lc3/n;->y()Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "getRestoreMask restore task is not running"

    invoke-static {v0, v10}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v9, 0x4

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 v9, v9, 0x20

    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    or-int/lit8 v9, v9, 0x10

    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    or-int/lit8 v9, v9, 0x1

    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    or-int/lit8 v2, v9, 0x2

    move v9, v2

    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "getRestoreMask retry"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v9, v9, 0x40

    goto :goto_4

    :cond_9
    const-string v2, "getRestoreMask restore task is running"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->B()Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "spd"

    const-string v3, "snb"

    if-eqz v1, :cond_b

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_5

    :cond_b
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lc3/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_c
    :goto_5
    or-int/lit16 v9, v9, 0x100

    goto :goto_6

    :cond_d
    const-string p1, "getRestoreMask SmartSwitchSnbSpdImporting"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRestoreMask result "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method
