.class public Ls2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt2/b;

.field public b:Lt2/c;

.field public c:Lp2/a;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Lt2/b;Lt2/c;Lp2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/j;->a:Lt2/b;

    iput-object p2, p0, Ls2/j;->b:Lt2/c;

    iput-object p3, p0, Ls2/j;->c:Lp2/a;

    invoke-virtual {p1}, Lt2/b;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls2/j;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ls2/j;->e:Z

    return-void
.end method

.method public static bridge synthetic a(Ls2/j;)Lt2/b;
    .locals 0

    iget-object p0, p0, Ls2/j;->a:Lt2/b;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 12

    const-string v0, "InputStream close - Exception = "

    const-string v1, "Failed to getJSONObject - "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ls2/j;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "LockSettings_backup.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "SyncOldNote$SyncServerPassword"

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Failed to delete1"

    invoke-static {v6, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ls2/j;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content.sync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "Failed to delete2"

    invoke-static {v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v7, p0, Ls2/j;->b:Lt2/c;

    invoke-virtual {v7, v3}, Lt2/c;->k(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    const-string v3, "There is p!"

    invoke-static {v6, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ls2/j;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->p()La2/d$e;

    move-result-object v3

    iget-object v8, p0, Ls2/j;->a:Lt2/b;

    invoke-virtual {v8}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Ls2/j;->d:Ljava/lang/String;

    const-string v10, "server_password"

    invoke-static {v3, v8, v10, v9}, La2/d;->c(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    goto :goto_0

    :cond_2
    const-string v3, "There is no p!"

    invoke-static {v6, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, p0, Ls2/j;->e:Z

    :goto_0
    iget-object v3, p0, Ls2/j;->c:Lp2/a;

    invoke-interface {v3}, Lp2/a;->isCancelled()Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    const-string v0, "Cancelled SyncServerPassword"

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v5}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v2, "json obj is null"

    invoke-static {v6, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v8

    :cond_4
    :try_start_3
    invoke-static {}, Lx2/b;->c()J

    move-result-wide v9

    const-string v4, "ModifiedTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v11, p0, Ls2/j;->b:Lt2/c;

    invoke-virtual {v11}, Lx2/f;->e()Z

    move-result v11

    if-eqz v11, :cond_5

    :goto_2
    invoke-virtual {p0, v2, v3, v4}, Ls2/j;->c(Ljava/lang/String;J)V

    goto :goto_3

    :cond_5
    cmp-long v9, v3, v9

    if-lez v9, :cond_6

    goto :goto_2

    :cond_6
    if-gez v9, :cond_7

    iput-boolean v7, p0, Ls2/j;->e:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catchall_0
    move-exception v1

    move-object v3, v5

    goto :goto_7

    :catch_2
    move-exception v2

    move-object v3, v5

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v3, v5

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v3, v5

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v2

    :goto_4
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v4, 0x130

    invoke-direct {v2, v4, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_6
    move-exception v2

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v4, 0x138

    invoke-direct {v2, v4, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_7
    move-exception v2

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v4, 0x13f

    invoke-direct {v2, v4, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_8
    throw v1

    :cond_9
    :goto_9
    iget-boolean v0, p0, Ls2/j;->e:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Ls2/j;->b:Lt2/c;

    invoke-virtual {v0}, Lx2/f;->e()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Ls2/j;->d()Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_a
    return v7
.end method

.method public final c(Ljava/lang/String;J)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls2/j;->e:Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SyncOldNote$SyncServerPassword"

    const-string v1, "Server is latest."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->e()Lg0/a;

    move-result-object v1

    iget-object v2, p0, Ls2/j;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Lg0/a;->updateUserAuthInfo(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls2/j;->a:Lt2/b;

    invoke-virtual {p1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->o()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ls2/j;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setLocalPasswordOwnerGuid(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lx2/b;->h(J)V

    goto :goto_0

    :cond_0
    const-string p1, "Failed to updateUserAuthInfo()"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ls0/c;

    const/16 p3, 0x138

    invoke-direct {p2, p3, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()Z
    .locals 11

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->e()Lg0/a;

    move-result-object v0

    iget-object v1, p0, Ls2/j;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lg0/a;->isSetPassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->e()Lg0/a;

    move-result-object v0

    iget-object v1, p0, Ls2/j;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lg0/a;->backupSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "SyncOldNote$SyncServerPassword"

    if-eqz v4, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Need to uploadServer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lx2/b;->c()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-eqz v3, :cond_2

    new-instance v3, Ld1/h;

    const-string v6, "server_password"

    const-string v7, "LockSettings_backup.xml"

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v5

    invoke-virtual {v5}, Lx/e;->m()Lb0/b;

    move-result-object v5

    invoke-interface {v5}, Lb0/b;->getSdocContractNo()I

    move-result v8

    move-object v5, v3

    move-wide v9, v1

    invoke-direct/range {v5 .. v10}, Ld1/h;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v3}, Ld1/h;->K()Lorg/json/JSONObject;

    move-result-object v7

    iget-object v3, p0, Ls2/j;->c:Lp2/a;

    invoke-interface {v3}, Lp2/a;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "Cancelled uploadServerPasswordInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v3, p0, Ls2/j;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->p()La2/d$e;

    move-result-object v3

    iget-object v5, p0, Ls2/j;->a:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v5

    const-string v6, "server_password"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ls2/j$a;

    invoke-direct {v8, p0}, Ls2/j$a;-><init>(Ls2/j;)V

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v1

    invoke-static/range {v2 .. v8}, La2/d;->m(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;La2/d$f;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to upload p file"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :catch_1
    const-string v1, "Failed to make json"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x130

    const-string v2, "Failed to upload category"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "Failed to bs"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v2, 0x138

    invoke-direct {v0, v2, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
