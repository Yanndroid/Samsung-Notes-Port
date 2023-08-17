.class public Ls2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/h;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/h;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lt2/b;

.field public f:Lt2/c;

.field public g:Lp2/a;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld1/h;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ld1/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt2/b;Lt2/c;Lp2/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls2/i;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls2/i;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls2/i;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls2/i;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls2/i;->k:Ljava/util/HashMap;

    iput-object p1, p0, Ls2/i;->e:Lt2/b;

    iput-object p2, p0, Ls2/i;->f:Lt2/c;

    iput-object p3, p0, Ls2/i;->g:Lp2/a;

    invoke-virtual {p1}, Lt2/b;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls2/i;->h:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ld1/h;)Z
    .locals 0

    invoke-static {p0}, Ls2/i;->l(Ld1/h;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ls2/i;)Lt2/b;
    .locals 0

    iget-object p0, p0, Ls2/i;->e:Lt2/b;

    return-object p0
.end method

.method public static synthetic l(Ld1/h;)Z
    .locals 0

    invoke-virtual {p0}, Ld1/h;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/notes/sync/utils/a;->B(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final c(Ljava/io/File;)Z
    .locals 4

    const-string v0, "SyncOldNote$SyncSDoc"

    const/4 v1, 0x1

    iput-boolean v1, p0, Ls2/i;->i:Z

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "checkValidSDocFile"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkCompat;->with(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;->asSpenSDocFile()Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->checkValidity(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Ls2/i;->i:Z

    :goto_0
    return v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "UnsupportedFileException : can\'t delete the file!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ls0/c;

    const/16 v0, 0x133

    const-string v1, "Failed to checkValidity!"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final d()Z
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteLocal() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls2/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncSDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls2/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/h;

    invoke-virtual {v2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "try to deleteSDoc - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/app/notes/sync/db/o;

    iget-object v5, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/notes/sync/db/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/db/o;->j()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/db/o;->c()J

    move-result-wide v9

    invoke-virtual {v2}, Ld1/h;->p()J

    move-result-wide v11

    cmp-long v5, v7, v11

    if-lez v5, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/db/o;->d()I

    move-result v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    if-eq v3, v4, :cond_0

    :goto_1
    iget-object v3, p0, Ls2/i;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ld1/h;->p()J

    move-result-wide v7

    cmp-long v5, v9, v7

    if-lez v5, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/db/o;->d()I

    move-result v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v4

    iget-object v3, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    move-wide v7, v9

    move v9, v3

    invoke-interface/range {v4 .. v9}, Lb0/b;->setNoteServerTimeAndDirty(Landroid/content/Context;Ljava/lang/String;JI)V

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSDoc - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/db/o;->d()I

    move-result v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    const-string v5, "OldServer"

    if-ne v2, v4, :cond_3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    iget-object v3, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v6, v4, v5}, Lb0/b;->deleteSDocSync(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    iget-object v4, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v4, v6, v3, v5}, Lb0/b;->deleteSDocSync(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "deleteLocal() finish"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public final e()Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteServer() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls2/i;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncSDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls2/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/h;

    iget-object v3, p0, Ls2/i;->g:Lp2/a;

    invoke-interface {v3}, Lp2/a;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "Cancelled SDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete Server Files - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->p()La2/d$e;

    move-result-object v4

    invoke-virtual {v2}, Ld1/h;->p()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ls2/i$a;

    invoke-direct {v5, p0, v3}, Ls2/i$a;-><init>(Ls2/i;Ljava/lang/String;)V

    invoke-static {v4, v3, v2, v5}, La2/d;->a(La2/d$e;Ljava/lang/String;Ljava/lang/String;La2/d$f;)I
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deleteFile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "deleteServer() finish"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final f(Ljava/lang/String;Ld1/h;)Ljava/io/File;
    .locals 13

    const-string v0, " => "

    const-string v1, " in "

    const-string v2, "Failed to downloadFile : "

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    :goto_0
    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x3

    const/16 v9, 0x133

    const-string v10, "SyncOldNote$SyncSDoc"

    if-ge v5, v8, :cond_3

    iget-object v5, p0, Ls2/i;->g:Lp2/a;

    invoke-interface {v5}, Lp2/a;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p1, "Cancelled downloadSDocFile"

    invoke-static {v10, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    :try_start_0
    iget-object v5, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->p()La2/d$e;

    move-result-object v5

    iget-object v8, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v8}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v8, v11, p1}, La2/d;->c(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v9

    invoke-virtual {v9}, Lf/a;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v5, v7

    goto/16 :goto_0

    :catch_1
    move-exception v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v11}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v11

    invoke-virtual {v11}, Lf/a;->i()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v11, "rcode"

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x3a

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const/16 v12, 0x2c

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    const-string v8, "downloadSDocFile : can\'t parse the error!"

    invoke-static {v10, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v3

    :goto_2
    const v11, 0x1381d

    if-ne v8, v11, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Sdoc] There is no "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-virtual {v5}, Ls0/c;->a()I

    move-result v8

    if-ne v8, v9, :cond_2

    goto/16 :goto_1

    :cond_2
    throw v5

    :cond_3
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ld1/h;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":"

    const-string v2, "_"

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadFileName: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v10, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tempPath: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v10, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "file names are not matched!"

    invoke-static {v10, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string p2, "Failed to renameTo"

    invoke-static {v10, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "can\'t delete the file!"

    invoke-static {v10, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance p1, Ls0/c;

    invoke-direct {p1, v9, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_6
    return-object p2

    :cond_7
    :goto_3
    const-string p1, "Failed to downloadSDocFile!"

    invoke-static {v10, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public final g()Z
    .locals 23

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadSdoc() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Ls2/i;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SyncOldNote$SyncSDoc"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, v1, Ls2/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, v5

    move v10, v7

    move v11, v10

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ld1/h;

    add-int/2addr v10, v13

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->z()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v12}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Ls2/i;->g:Lp2/a;

    invoke-interface {v14}, Lp2/a;->isCancelled()Z

    move-result v14

    const-string v15, "Cancelled downloadSdoc"

    if-eqz v14, :cond_0

    invoke-static {v2, v15}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_0
    new-instance v14, Lcom/samsung/android/app/notes/sync/db/o;

    iget-object v7, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v7}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v14, v7, v13}, Lcom/samsung/android/app/notes/sync/db/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    const-string v0, "Download Files - "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v21, v3

    invoke-virtual {v14}, Lcom/samsung/android/app/notes/sync/db/o;->j()J

    move-result-wide v3

    invoke-virtual {v12}, Ld1/h;->p()J

    move-result-wide v16

    cmp-long v0, v3, v16

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore this file : newTime = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , item.getTimeStamp = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ld1/h;->p()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object v0, v1, Ls2/i;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v0, v12}, Ls2/i;->f(Ljava/lang/String;Ld1/h;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, v1, Ls2/i;->g:Lp2/a;

    invoke-interface {v0}, Lp2/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2, v15}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v3, v14, v3

    invoke-virtual {v1, v0}, Ls2/i;->c(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v7

    invoke-virtual {v7}, Lx/e;->m()Lb0/b;

    move-result-object v7

    iget-object v14, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v14}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v14

    invoke-interface {v7, v14, v13}, Lb0/b;->getNoteServerTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v12}, Ld1/h;->p()J

    move-result-wide v16

    cmp-long v7, v14, v16

    if-lez v7, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "failed to delete sdoc completeFile"

    :goto_1
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v1, v0, v12}, Ls2/i;->k(Ljava/io/File;Ld1/h;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "fail to save(update) note"

    goto :goto_1

    :cond_5
    :goto_2
    move-object/from16 v0, v20

    move-wide/from16 v3, v21

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v14, v16, v14

    const-string/jumbo v0, "try to setNoteServerTimeAndDirty"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    iget-object v7, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v7}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v12}, Ld1/h;->p()J

    move-result-wide v17

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v12

    invoke-virtual {v12}, Lx/e;->m()Lb0/b;

    move-result-object v12

    invoke-interface {v12}, Lb0/b;->getSdocContractNo()I

    move-result v19
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_2

    move-object v12, v2

    move-wide v1, v14

    move-object v14, v0

    move-object v15, v7

    move-object/from16 v16, v13

    :try_start_1
    invoke-interface/range {v14 .. v19}, Lb0/b;->setNoteServerTimeAndDirty(Landroid/content/Context;Ljava/lang/String;JI)V
    :try_end_1
    .catch Ls0/c; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v11, v11, 0x1

    add-long/2addr v5, v3

    add-long/2addr v8, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadSdoc() "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p0

    iget-object v13, v7, Ls2/i;->b:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] dt = "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , ct = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    move-object v2, v12

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_3

    :cond_7
    move-object v7, v1

    move-object v12, v2

    :try_start_2
    new-instance v0, Ls0/c;

    const/16 v1, 0x133

    const-string v2, "There is no completeFile!"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ls0/c; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v7, v1

    move-object v12, v2

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to downloadSDocFile -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v7, v1

    iget-object v0, v7, Ls2/i;->e:Lt2/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx2/d;->i(Z)V

    iget-object v0, v7, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v1}, Lx2/d;->m(Z)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x143

    const-string v2, "device storage is full!"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9
    move-object v7, v1

    move-object v12, v2

    move-wide/from16 v21, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, v0, v21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadSdoc() finish : tdt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , tct = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , tt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v13
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ld1/h;",
            ">;"
        }
    .end annotation

    const-string v0, "SyncOldNote$SyncSDoc"

    const-string v1, "Start to get local list "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->r()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->m()Lb0/b;

    move-result-object v1

    iget-object v2, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lb0/b;->getUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->r()Ljava/util/List;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/app/notes/sync/db/o;

    iget-object v4, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/notes/sync/db/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/o;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/o;->j()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/o;->d()I

    move-result v7

    new-instance v3, Ld1/h;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Ld1/h;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish to get local list : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const-string v1, "Failed to getUUIDList()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v2, 0x13a

    invoke-direct {v0, v2, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ld1/h;",
            ">;"
        }
    .end annotation

    const-string v0, "filepath"

    const-string v1, "SyncOldNote$SyncSDoc"

    const-string v2, "getServerSDocArray start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v3, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->y()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "snote_list"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ".sdoc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ld1/h;

    invoke-direct {v8, v7}, Ld1/h;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v7, "getServerSDocArray : no filepath!"

    invoke-static {v1, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish to get server list : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServerSDocArray - downloadList - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    const/16 v2, 0x130

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final j(Lcom/samsung/android/app/notes/sync/db/o;Ld1/h;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/notes/sync/db/o;->j()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ld1/h;->p()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/notes/sync/db/o;->h()J

    move-result-wide v6

    new-instance v8, Lcom/samsung/android/app/notes/sync/db/o;

    iget-object v9, v0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/samsung/android/app/notes/sync/db/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/android/app/notes/sync/db/o;->h()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Converted] handleConvertedNote() : serverSDocSyncModifiedTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " , localSDocSyncModifiedTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " , serverSDocLastModifiedAt = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " , localSDocLastModifiedAt = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SyncOldNote$SyncSDoc"

    invoke-static {v11, v10}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v4, v2

    if-lez v2, :cond_4

    iget-object v2, v0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->u()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/c;

    new-instance v3, Lcom/samsung/android/app/notes/sync/db/p;

    iget-object v10, v0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v10}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/samsung/android/app/notes/sync/db/p;-><init>(Landroid/content/Context;)V

    cmp-long v6, v8, v6

    const-string v7, "[Converted] handleConvertedNote() : "

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is modified"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v6, v8}, Lt2/b;->S(Z)V

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ld1/h;->p()J

    move-result-wide v6

    invoke-virtual {v2}, Ld1/c;->c()J

    move-result-wide v11

    cmp-long v6, v6, v11

    if-nez v6, :cond_0

    invoke-virtual {v2}, Ld1/c;->a()J

    move-result-wide v6

    invoke-virtual {v3, v1, v6, v7}, Lcom/samsung/android/app/notes/sync/db/p;->c(Ljava/lang/String;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1, v9, v10}, Lcom/samsung/android/app/notes/sync/db/p;->c(Ljava/lang/String;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1, v9, v10}, Lcom/samsung/android/app/notes/sync/db/p;->c(Ljava/lang/String;J)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Converted] handleConvertedNote() : lastMappedAt of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, v0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMappedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v5}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;->delete(Ljava/lang/String;J)V

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is restored"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    iget-object v7, v0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v7}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMappedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;

    move-result-object v7

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ld1/h;->p()J

    move-result-wide v11

    invoke-virtual {v2}, Ld1/c;->c()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-nez v11, :cond_3

    invoke-virtual {v2}, Ld1/c;->a()J

    move-result-wide v11

    invoke-virtual {v3, v1, v11, v12}, Lcom/samsung/android/app/notes/sync/db/p;->c(Ljava/lang/String;J)Z

    iget-object v3, v0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v3, v8}, Lt2/b;->S(Z)V

    invoke-virtual {v2}, Ld1/c;->a()J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_3

    invoke-virtual {v7, v1, v4, v5}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;->delete(Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    move v8, v6

    :goto_1
    if-nez v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/notes/sync/db/o;->g()J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/notes/sync/db/o;->g()J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;->delete(Ljava/lang/String;J)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final k(Ljava/io/File;Ld1/h;)Z
    .locals 11

    const-string v0, "SyncOldNote$SyncSDoc"

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Ls2/i;->i:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    invoke-interface {v2}, Lb0/b;->getSdocContractLockTypeNone()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkCompat;->with(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;->asSpenSDocFile()Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getDocumentType(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractLockTypeNone()I

    move-result v4

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Ls2/i;->f:Lt2/c;

    invoke-virtual {v4, v3}, Lx2/f;->d(Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ignore the downloaded lock note due to the LDU!"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "failed to delete sdoc completeFile"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return v1

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Failed to renameTo 2"

    invoke-virtual {p2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    move-object v8, p2

    move-object v9, p1

    invoke-virtual/range {v4 .. v10}, Ls2/i;->n(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ld1/h;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Succeed to save valid note(update)"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const-string v2, "isValidSdoc is false!"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    invoke-interface {v2}, Lb0/b;->getSdocContractNo()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "Failed to renameTo 3"

    invoke-virtual {p2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    move-object v8, p2

    move-object v9, p1

    invoke-virtual/range {v4 .. v10}, Ls2/i;->n(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ld1/h;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Succeed to save invalid note(update)"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return v3

    :cond_4
    return v1

    :catch_1
    move-exception p1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDownloadedSDocFile() : fail to perform , UUID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt2/a;->l(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    invoke-virtual {p2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ld1/h;->p()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lt2/a;->b(Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    const-string p1, "handleDownloadedSDocFile() : fail to addOutOfMemoryOldNote"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return v1
.end method

.method public final m()Z
    .locals 10

    const-string v0, "SyncOldNote$SyncSDoc"

    const-string v1, "Start to compare"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ls2/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/h;

    iget-object v3, p0, Ls2/i;->k:Ljava/util/HashMap;

    invoke-virtual {v2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/h;

    if-eqz v3, :cond_5

    iget-object v4, p0, Ls2/i;->k:Ljava/util/HashMap;

    invoke-virtual {v3}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ld1/h;->p()J

    move-result-wide v4

    invoke-virtual {v3}, Ld1/h;->p()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Ld1/h;->q()I

    move-result v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Ls2/i;->c:Ljava/util/List;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Ls2/i;->b:Ljava/util/List;

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-gez v4, :cond_4

    invoke-virtual {v2}, Ld1/h;->q()I

    move-result v4

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v5

    invoke-virtual {v5}, Lx/e;->m()Lb0/b;

    move-result-object v5

    invoke-interface {v5}, Lb0/b;->getSdocContractYes()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Ld1/h;->q()I

    move-result v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Ls2/i;->c:Ljava/util/List;

    goto :goto_4

    :cond_2
    :goto_2
    iget-object v3, p0, Ls2/i;->d:Ljava/util/List;

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v3, p0, Ls2/i;->a:Ljava/util/List;

    :goto_4
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    iget-object v4, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v5

    invoke-virtual {v5}, Lx/e;->m()Lb0/b;

    move-result-object v5

    invoke-interface {v5}, Lb0/b;->getSdocContractNo()I

    move-result v5

    invoke-interface {v3, v4, v2, v5}, Lb0/b;->setNoteDirty(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Ld1/h;->q()I

    move-result v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    if-ne v3, v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object v3, p0, Ls2/i;->f:Lt2/c;

    iget-object v4, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lt2/c;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add a local item to toDownloadList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ls2/i;->b:Ljava/util/List;

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toUploadList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls2/i;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,toDownloadList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls2/i;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toDeleteLocalList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls2/i;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,toDeleteServerList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls2/i;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Start to compare more"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Ls2/i;->k:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld1/h;

    new-instance v5, Lcom/samsung/android/app/notes/sync/db/o;

    iget-object v6, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/app/notes/sync/db/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/db/o;->j()J

    move-result-wide v6

    invoke-virtual {v4}, Ld1/h;->p()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Ld1/h;->q()I

    move-result v6

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v7

    invoke-virtual {v7}, Lx/e;->m()Lb0/b;

    move-result-object v7

    invoke-interface {v7}, Lb0/b;->getSdocContractYes()I

    move-result v7

    if-ne v6, v7, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "only server is deleted - ServerKey : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/db/o;->k()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Ls2/i;->c:Ljava/util/List;

    goto :goto_6

    :cond_a
    invoke-virtual {v4}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    iget-object v3, p0, Ls2/i;->b:Ljava/util/List;

    :goto_6
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toDownloadList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ls2/i;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " toDeleteLocalList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ls2/i;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_d

    goto :goto_8

    :cond_d
    iget-object v4, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    :goto_8
    iget-object v2, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_f

    iget-object v0, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->G()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v3}, Lt2/b;->T(Z)V

    :cond_f
    iget-object v0, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_10

    goto :goto_a

    :cond_10
    iget-object v4, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_11
    :goto_a
    iget-object v1, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v0, v1, :cond_12

    iget-object v0, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->H()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v3}, Lt2/b;->U(Z)V

    :cond_12
    return v3
.end method

.method public final n(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ld1/h;Ljava/io/File;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Ls2/i;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ld1/h;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p5

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    const-string v10, "SyncOldNote$SyncSDoc"

    if-nez v6, :cond_1

    const-string v0, "failed to rename completeFile"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "failed to delete completeFile"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ls0/c;

    const/16 v2, 0x133

    move-object/from16 v3, p3

    invoke-direct {v0, v2, v3}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v5, Lcom/samsung/android/app/notes/sync/db/o;

    iget-object v6, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v9}, Lcom/samsung/android/app/notes/sync/db/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/db/o;->k()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/db/o;->d()I

    move-result v4

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v6

    invoke-virtual {v6}, Lx/e;->m()Lb0/b;

    move-result-object v6

    invoke-interface {v6}, Lb0/b;->getSdocContractYes()I

    move-result v6

    if-ne v4, v6, :cond_2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractNo()I

    move-result v4

    :cond_2
    new-instance v6, Lb0/d$a;

    iget-object v8, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v8}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8, v9}, Lb0/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lb0/d$a;->g(Ljava/lang/String;)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v9}, Lb0/d$a;->t(Ljava/lang/String;)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v7}, Lb0/d$a;->o(Z)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v11}, Lb0/d$a;->q(Z)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v11}, Lb0/d$a;->p(Z)Lb0/d$a;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ld1/h;->p()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lb0/d$a;->r(J)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v11}, Lb0/d$a;->l(Z)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v11}, Lb0/d$a;->k(Z)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v7}, Lb0/d$a;->i(Z)Lb0/d$a;

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDeleted state = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v6, v0}, Lb0/d$a;->f(Ljava/lang/Integer;)Lb0/d$a;

    if-eqz v2, :cond_4

    invoke-virtual {v6, v2}, Lb0/d$a;->n(Ljava/lang/Integer;)Lb0/d$a;

    :cond_4
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->l()Lb0/d;

    move-result-object v0

    iget-object v2, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v6}, Lb0/d$a;->a()Lb0/e;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lb0/d;->saveDoc(Landroid/content/Context;Lb0/e;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Failed to saveDoc the note(update)"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_5
    move-object/from16 v6, p4

    invoke-virtual {v1, v5, v6, v9}, Ls2/i;->j(Lcom/samsung/android/app/notes/sync/db/o;Ld1/h;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0}, Lb0/b;->getSdocContractToRecycleBin()I

    move-result v0

    if-ne v4, v0, :cond_16

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    iget-object v2, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v9, v3, v4}, Lb0/b;->recycleBinResolverUpdateTimeMoved(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_7

    :cond_6
    move-object/from16 v6, p4

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v8

    invoke-virtual {v8}, Lx/e;->m()Lb0/b;

    move-result-object v8

    invoke-interface {v8}, Lb0/b;->getSdocContractNo()I

    move-result v8

    iget-object v12, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v12}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_7

    iget-object v8, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v8}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld1/h;

    iget-object v12, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v12}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ld1/h;->q()I

    move-result v12

    move/from16 v16, v12

    move-object v12, v8

    move/from16 v8, v16

    goto :goto_1

    :cond_7
    move-object v12, v13

    :goto_1
    iget-object v14, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v14}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v13, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    iget-object v14, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v14}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v14

    invoke-virtual {v14}, Lx/e;->m()Lb0/b;

    move-result-object v14

    invoke-interface {v14}, Lb0/b;->getSdocContractYes()I

    move-result v14

    if-ne v8, v14, :cond_9

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v8

    invoke-virtual {v8}, Lx/e;->m()Lb0/b;

    move-result-object v8

    invoke-interface {v8}, Lb0/b;->getSdocContractNo()I

    move-result v8

    :cond_9
    move v14, v8

    new-instance v8, Lb0/d$a;

    iget-object v15, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v15}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v8, v15}, Lb0/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Lb0/d$a;->g(Ljava/lang/String;)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v9}, Lb0/d$a;->t(Ljava/lang/String;)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v11}, Lb0/d$a;->o(Z)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v11}, Lb0/d$a;->q(Z)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v11}, Lb0/d$a;->p(Z)Lb0/d$a;

    move-result-object v3

    move-object/from16 p5, v8

    invoke-virtual/range {p4 .. p4}, Ld1/h;->p()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lb0/d$a;->r(J)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v11}, Lb0/d$a;->l(Z)Lb0/d$a;

    move-result-object v3

    invoke-virtual {v3, v11}, Lb0/d$a;->k(Z)Lb0/d$a;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lb0/d$a;->i(Z)Lb0/d$a;

    move-object/from16 v3, p5

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Lb0/d$a;->f(Ljava/lang/Integer;)Lb0/d$a;

    if-eqz v2, :cond_b

    invoke-virtual {v3, v2}, Lb0/d$a;->n(Ljava/lang/Integer;)Lb0/d$a;

    :cond_b
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->l()Lb0/d;

    move-result-object v0

    iget-object v2, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3}, Lb0/d$a;->a()Lb0/e;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lb0/d;->saveDoc(Landroid/content/Context;Lb0/e;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "Failed to save note(add)"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "Failed to delete moveFile"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_d
    const-string v15, "serverItem is null"

    if-nez v12, :cond_e

    invoke-static {v10, v15}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0}, Lb0/b;->getSdocContractNo()I

    move-result v6

    const-wide/16 v7, 0x0

    const-string v5, "1"

    move-object/from16 v4, p6

    invoke-interface/range {v2 .. v8}, Lb0/a;->setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)I

    goto/16 :goto_6

    :cond_e
    const-string v0, "new extra data : "

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    iget-object v2, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v12}, Ld1/h;->r()Z

    move-result v3

    invoke-interface {v0, v2, v9, v3, v11}, Lb0/b;->setNoteFavorite(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v0

    if-gtz v0, :cond_f

    const-string v0, "Fail to set favorite."

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :try_start_0
    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/db/o;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->isFavorite(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v12}, Ld1/h;->r()Z

    move-result v3

    if-eq v2, v3, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update favorite in file : isFavorite = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ld1/h;->r()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkCompat;->with(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;->asSpenSDocFile()Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;

    invoke-virtual {v12}, Ld1/h;->r()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->setFavorite(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to save favorite to the file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_3
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    invoke-virtual {v12}, Ld1/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lb0/a;->getCategoryDeleted(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    invoke-interface {v2}, Lb0/b;->getSdocContractNo()I

    move-result v2

    if-ne v0, v2, :cond_12

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v12}, Ld1/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0}, Lb0/b;->getSdocContractNo()I

    move-result v6

    invoke-virtual {v12}, Ld1/h;->f()J

    move-result-wide v7

    move-object/from16 v4, p6

    invoke-interface/range {v2 .. v8}, Lb0/a;->setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v0

    const-string v2, "Update category in server - deleted no"

    invoke-static {v10, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_11

    const-string v0, "Fail to set as a valid category."

    goto :goto_4

    :cond_11
    const-string v0, "succeed to set as a valid category!"

    goto :goto_5

    :cond_12
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v2, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "1"

    invoke-interface {v0, v2, v9, v3}, Lb0/a;->setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update category in server - deleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_13

    const-string v0, "Fail to set as no category."

    :goto_4
    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    const-string v0, "succeed to set as no category!"

    :goto_5
    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0}, Lb0/b;->getSdocContractToRecycleBin()I

    move-result v0

    if-ne v14, v0, :cond_14

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    iget-object v2, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v9, v3, v4}, Lb0/b;->recycleBinResolverUpdateTimeMoved(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_14
    if-nez v13, :cond_15

    invoke-static {v10, v15}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_15
    invoke-virtual {v1, v9, v13}, Ls2/i;->p(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update tags in server : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_7
    return v11
.end method

.method public o()Z
    .locals 8

    iget-object v0, p0, Ls2/i;->g:Lp2/a;

    invoke-interface {v0}, Lp2/a;->isCancelled()Z

    move-result v0

    const-string v1, "Cancelled SDoc"

    const-string v2, "SyncOldNote$SyncSDoc"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->z()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ls2/i;->h()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ls2/i;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ls2/i;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld1/h;

    iget-object v6, p0, Ls2/i;->k:Ljava/util/HashMap;

    invoke-virtual {v5}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Ls2/i;->g:Lp2/a;

    invoke-interface {v4}, Lp2/a;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isUnpackDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ls2/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p0, Ls2/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Ls2/h;->a:Ls2/h;

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/scs/ai/asr/c0;->a:Lcom/samsung/android/sdk/scs/ai/asr/c0;

    invoke-static {v5}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Ls2/i;->j:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Excluding the files from the unpack. originalSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", after: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls2/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Ls2/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    const/4 v0, 0x1

    if-nez v1, :cond_4

    const-string v1, "Old Note : no server change!"

    invoke-static {v2, v1}, Lc3/p;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "There is no sdoc to sync"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    invoke-virtual {p0}, Ls2/i;->m()Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Ls2/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Ls2/i;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Ls2/i;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Ls2/i;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    if-lez v1, :cond_9

    iget-object v1, p0, Ls2/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Ls2/i;->d()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Ls2/i;->g:Lp2/a;

    invoke-interface {v1}, Lp2/a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "Cancelled before deleting sDocs in a server!"

    :goto_1
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_6
    iget-object v1, p0, Ls2/i;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Ls2/i;->e()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Ls2/i;->g:Lp2/a;

    invoke-interface {v1}, Lp2/a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "Cancelled before uploading sDocs!"

    goto :goto_1

    :cond_7
    iget-object v1, p0, Ls2/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Ls2/i;->q()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Ls2/i;->g:Lp2/a;

    invoke-interface {v1}, Lp2/a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "Cancelled before downloading sDocs!"

    goto :goto_1

    :cond_8
    iget-object v1, p0, Ls2/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Ls2/i;->g()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Ls2/i;->g:Lp2/a;

    invoke-interface {v1}, Lp2/a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "Cancelled before finishing downloading sDocs!"

    goto :goto_1

    :cond_9
    const-string v1, "There is no sdoc item to sync"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return v0

    :cond_b
    iget-object v0, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v3}, Lx2/d;->j(Z)V

    iget-object v0, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v3}, Lx2/d;->o(Z)V

    iget-object v0, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v3}, Lx2/d;->i(Z)V

    iget-object v0, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v3}, Lx2/d;->m(Z)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x143

    const-string v2, "device storage is full!"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final p(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->k()Lb0/c;

    move-result-object v0

    iget-object v1, p0, Ls2/i;->e:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    invoke-interface {v2}, Lb0/b;->getSdocContractNo()I

    move-result v2

    invoke-interface {v0, v1, p1, p2, v2}, Lb0/c;->setNoteTagContentList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update tags in server : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncOldNote$SyncSDoc"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p2, :cond_0

    const-string p1, "Fail to setNoteTagContentList"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "succeed to set"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final q()Z
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadSdoc() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Ls2/i;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SyncOldNote$SyncSDoc"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, v1, Ls2/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/h;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->z()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v12

    new-instance v7, Lcom/samsung/android/app/notes/sync/db/o;

    iget-object v9, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9, v12}, Lcom/samsung/android/app/notes/sync/db/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/app/notes/sync/db/o;->l()I

    move-result v9

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v10

    invoke-virtual {v10}, Lx/e;->m()Lb0/b;

    move-result-object v10

    invoke-interface {v10}, Lb0/b;->getSdocContractLockTypeSdoc()I

    move-result v10

    if-ne v9, v10, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/app/notes/sync/db/o;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v10}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v10

    invoke-virtual {v10}, Lf/a;->o()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lt2/a;->j()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v13

    invoke-virtual {v13}, Lf/a;->i()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string/jumbo v15, "uploadSdoc : "

    if-eqz v14, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is locked but passed due to empty current guidHash"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v9, v10, v11, v13}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isNoteOwner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eq v9, v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is locked and passed due to different account!!"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    iget-object v6, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v7

    invoke-virtual {v7}, Lx/e;->m()Lb0/b;

    move-result-object v7

    invoke-interface {v7}, Lb0/b;->getSdocContractNo()I

    move-result v7

    invoke-interface {v0, v6, v12, v7}, Lb0/b;->setNoteDirty(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    iget-object v6, v1, Ls2/i;->g:Lp2/a;

    invoke-interface {v6}, Lp2/a;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "Cancelled SDoc"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upload Files - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ld1/h;->K()Lorg/json/JSONObject;

    move-result-object v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Ls2/i;->h:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ld1/h;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uploadFile - uuid:  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , name: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ld1/h;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/samsung/android/app/notes/sync/utils/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0}, Lx2/d;->b()I

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-ne v0, v6, :cond_3

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v7}, Lx2/d;->k(I)V

    goto :goto_2

    :cond_3
    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0}, Lx2/d;->b()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lx2/d;->k(I)V

    :goto_2
    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v8}, Lx2/d;->j(Z)V

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v8}, Lx2/d;->o(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to uploadFile - >1G : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v6}, Lx2/d;->b()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v7}, Lcom/samsung/android/app/notes/sync/db/o;->j()J

    move-result-wide v9

    const-wide/16 v15, 0x0

    cmp-long v6, v9, v15

    if-nez v6, :cond_6

    const-string/jumbo v6, "try to uploadFile - serverTimestamp is 0"

    invoke-static {v2, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/app/notes/sync/db/o;->i()J

    move-result-wide v9

    cmp-long v6, v9, v15

    if-nez v6, :cond_5

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v8}, Lx2/d;->o(Z)V

    const-string v0, "Fail to uploadFile - serverTimestamp is 0"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v6

    invoke-virtual {v6}, Lx/e;->m()Lb0/b;

    move-result-object v6

    iget-object v13, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v13

    invoke-interface {v6, v13, v12, v9, v10}, Lb0/b;->setNoteServerTime(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_6
    invoke-virtual {v0, v9, v10}, Ld1/h;->J(J)V

    iget-object v6, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->p()La2/d$e;

    move-result-object v9

    iget-object v6, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v0}, Ld1/h;->p()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ls2/i$b;

    invoke-direct {v15, v1, v7, v0, v12}, Ls2/i$b;-><init>(Ls2/i;Lcom/samsung/android/app/notes/sync/db/o;Ld1/h;Ljava/lang/String;)V

    invoke-static/range {v9 .. v15}, La2/d;->m(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;La2/d$f;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to uploadFile - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v6

    const/16 v7, 0x138

    if-ne v6, v7, :cond_7

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v8}, Lx2/d;->o(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v6

    const/16 v7, 0x1f5

    if-ne v6, v7, :cond_8

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v8}, Lx2/d;->j(Z)V

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v8}, Lx2/d;->o(Z)V

    const-string v0, "Recover the previous history for sdoc"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1464416139847"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lt2/a;->s(J)V

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v6}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v6

    const/16 v7, 0x1f7

    if-ne v6, v7, :cond_9

    const-string v0, "There are duplicated sync paths in S Cloud!"

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v6

    const/16 v7, 0x1f8

    if-ne v6, v7, :cond_a

    const-string v0, "There are a decryption error and pass it!"

    goto/16 :goto_1

    :cond_a
    throw v0

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to uploadFile -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x130

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_b
    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v8}, Lx2/d;->j(Z)V

    iget-object v0, v1, Ls2/i;->e:Lt2/b;

    invoke-virtual {v0, v8}, Lx2/d;->o(Z)V

    new-instance v0, Ls0/c;

    const/16 v2, 0x143

    const-string v3, "device storage is full!"

    invoke-direct {v0, v2, v3}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uploadSdoc() finish : tut = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method
