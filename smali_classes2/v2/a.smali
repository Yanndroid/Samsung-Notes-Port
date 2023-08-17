.class public Lv2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/a$d;
    }
.end annotation


# instance fields
.field public a:Ls0/c;

.field public b:Lx2/e;

.field public c:Ljava/util/concurrent/ExecutorService;

.field public d:Lcom/samsung/android/app/notes/sync/network/networkutils/c;


# direct methods
.method public constructor <init>(Lx2/e;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/a;->b:Lx2/e;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v0, "SyncNote/SyncFiles"

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lv2/a;->c:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lv2/a;->d:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    return-void
.end method

.method public static bridge synthetic a(Lv2/a;)Lcom/samsung/android/app/notes/sync/network/networkutils/c;
    .locals 0

    iget-object p0, p0, Lv2/a;->d:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    return-object p0
.end method

.method public static bridge synthetic b(Lv2/a;)Ls0/c;
    .locals 0

    iget-object p0, p0, Lv2/a;->a:Ls0/c;

    return-object p0
.end method

.method public static bridge synthetic c(Lv2/a;)Lx2/e;
    .locals 0

    iget-object p0, p0, Lv2/a;->b:Lx2/e;

    return-object p0
.end method

.method public static bridge synthetic d(Lv2/a;Ls0/c;)V
    .locals 0

    iput-object p1, p0, Lv2/a;->a:Ls0/c;

    return-void
.end method

.method public static bridge synthetic e(Lv2/a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv2/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lv2/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv2/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final g(Lv2/a$d;)V
    .locals 2

    iget-object v0, p0, Lv2/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lv2/a$a;

    invoke-direct {v1, p0, p1}, Lv2/a$a;-><init>(Lv2/a;Lv2/a$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/utils/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lv2/a;->b:Lx2/e;

    invoke-virtual {p1}, Lx2/d;->b()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lv2/a;->b:Lx2/e;

    invoke-virtual {p1, v1}, Lx2/d;->k(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lv2/a;->b:Lx2/e;

    invoke-virtual {p1}, Lx2/d;->b()I

    move-result v0

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lx2/d;->k(I)V

    :goto_0
    iget-object p1, p0, Lv2/a;->b:Lx2/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lx2/d;->j(Z)V

    iget-object p1, p0, Lv2/a;->b:Lx2/e;

    invoke-virtual {p1, v0}, Lx2/d;->o(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to uploadFile - >1G : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lv2/a;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncNote/SyncFiles"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ls0/c;

    const/16 v0, 0x14e

    const-string v1, "Failed to uploadFile due to 1G limit!"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lv2/a;->c:Ljava/util/concurrent/ExecutorService;

    const-wide/32 v1, 0x36ee80

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lv2/a;->a:Ls0/c;

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lv2/a;->j()V
    :try_end_1
    .catch Ls0/c; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    iput-object v1, p0, Lv2/a;->a:Ls0/c;

    :cond_0
    :goto_0
    iget-object v1, p0, Lv2/a;->a:Ls0/c;

    if-nez v1, :cond_1

    new-instance v1, Ls0/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    iput-object v1, p0, Lv2/a;->a:Ls0/c;

    :cond_1
    :goto_1
    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lv2/a;->d:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/c;->a()V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadFile() url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNote/SyncFiles"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv2/a;->j()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "downloadFile() - fail to delete file."

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lv2/a;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->p()La2/g$a;

    move-result-object v1

    iget-object v0, p0, Lv2/a;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lv2/a;->d:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, La2/g;->b(La2/g$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;La2/d$f;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    return-void

    :cond_1
    const-string/jumbo p1, "url or file path is null!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ls0/c;

    const/4 p2, 0x0

    const-string v0, "SyncNote/SyncFilesurl or file path is null"

    invoke-direct {p1, p2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public l(Le1/c;)Z
    .locals 4

    invoke-virtual {p1}, Le1/c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "SyncNote/SyncFiles"

    const-string v0, "downloadFiles() : No content file!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Le1/c;->c()Lj0/a;

    move-result-object v0

    invoke-virtual {v0}, Lj0/a;->g()Lk0/a;

    move-result-object v0

    invoke-virtual {v0}, Lk0/a;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/a;

    invoke-virtual {v2}, Ll0/a;->m()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lv2/a$b;

    invoke-direct {v3, p0, v2, p1}, Lv2/a$b;-><init>(Lv2/a;Ll0/a;Le1/c;)V

    invoke-virtual {p0, v3}, Lv2/a;->g(Lv2/a$d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lv2/a;->m()V

    invoke-virtual {p0}, Lv2/a;->i()V

    iget-object p1, p0, Lv2/a;->a:Ls0/c;

    if-nez p1, :cond_3

    return v1

    :cond_3
    throw p1
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lv2/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public n(Lk0/a;)V
    .locals 4

    new-instance v0, Le1/b;

    iget-object v1, p0, Lv2/a;->b:Lx2/e;

    invoke-direct {v0, v1, p1}, Le1/b;-><init>(Lx2/e;Lk0/a;)V

    invoke-virtual {v0}, Le1/b;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/a;->o(Ljava/util/List;)V

    invoke-virtual {v0}, Le1/b;->c()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x64

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Le1/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lv2/a;->b:Lx2/e;

    invoke-static {v3, v1}, La2/g;->n(Lx2/e;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le1/b;->f(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadResults\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Le1/b;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le1/b$a;

    new-instance v2, Lv2/a$c;

    invoke-direct {v2, p0, v1, p1}, Lv2/a$c;-><init>(Lv2/a;Le1/b$a;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v2}, Lv2/a;->g(Lv2/a$d;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lv2/a;->m()V

    invoke-virtual {p0}, Lv2/a;->i()V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v1, "UploadResults"

    invoke-virtual {v0, v1}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    iget-object v0, p0, Lv2/a;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/p$c;->m(Landroid/content/Context;)V

    iget-object p1, p0, Lv2/a;->a:Ls0/c;

    if-nez p1, :cond_2

    return-void

    :cond_2
    throw p1
.end method

.method public final o(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le1/b$a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le1/b$a;

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Le1/b$a;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/16 v3, 0x146

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    invoke-static {v1}, Lc3/j;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Le1/b$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ls0/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdk hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Le1/b$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and app hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is different, fileInfo = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ls0/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty file , fileInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get hash :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNote/SyncFiles"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method
