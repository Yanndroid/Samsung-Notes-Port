.class public Lv2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lx2/e;

.field public b:Lx2/g;

.field public c:Lp2/a;

.field public d:Lx2/a;


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/d;->a:Lx2/e;

    iput-object p2, p0, Lv2/d;->b:Lx2/g;

    iput-object p3, p0, Lv2/d;->c:Lp2/a;

    new-instance p3, Lx2/a;

    invoke-direct {p3, p1, p2}, Lx2/a;-><init>(Lx2/e;Lx2/g;)V

    iput-object p3, p0, Lv2/d;->d:Lx2/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 5

    const-string v0, "perform() : fail to delete the temp files : "

    const-string v1, "SyncSearchData"

    iget-object v2, p0, Lv2/d;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Start SyncSearchData"

    invoke-static {v2, v3}, Lc3/p;->s(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "Search Data (downSync)"

    invoke-static {v1, v2}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv2/d;->a()V

    const-string v2, "Search Data (upSync)"

    invoke-static {v1, v2}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv2/d;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lv2/d;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lj0/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lv2/d;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Finish SyncSearchData"

    invoke-static {v0, v1}, Lc3/p;->s(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lv2/d;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lj0/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    throw v2
.end method

.method public final c()V
    .locals 0

    return-void
.end method
