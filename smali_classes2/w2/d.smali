.class public Lw2/d;
.super Lw2/g;
.source "SourceFile"


# instance fields
.field public g:Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;Ljava/lang/String;Lx2/a;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lw2/g;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V

    iput-object p4, p0, Lw2/d;->g:Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;

    return-void
.end method

.method public static bridge synthetic h(Lw2/d;)Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;
    .locals 0

    iget-object p0, p0, Lw2/d;->g:Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;

    return-object p0
.end method


# virtual methods
.method public final i(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearTempFolder() : fail to deleteFile, Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SyncNote/SyncSDocxCreateTempLocalNote"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->makeDirectory(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Lu2/g;

    iget-object v1, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/e;->p()La2/g$a;

    move-result-object v1

    iget-object v2, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lu2/g;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;La2/g$b;)V

    invoke-virtual {v0}, Lu2/g;->c()Le1/i;

    move-result-object v0

    invoke-virtual {v0}, Le1/i;->b()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->getSyncModifiedTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lw2/d;->l(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", serverId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "SyncNote/SyncSDocxCreateTempLocalNote"

    invoke-static {v11, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v2

    const-string v4, "SyncSDocxCreateTempLocalNote"

    invoke-virtual {v2, v4}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    iget-object v4, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    iget-object v4, v1, Lw2/a;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc3/p$c;->m(Landroid/content/Context;)V

    const/4 v12, 0x1

    new-array v13, v12, [Z

    const/4 v14, 0x0

    aput-boolean v14, v13, v14

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lw2/h;->b()V

    invoke-virtual/range {p0 .. p2}, Lw2/d;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aput-boolean v12, v13, v14

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v10}, Lw2/d;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v15, Le1/c;

    iget-object v2, v1, Lw2/a;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {v15, v2, v3}, Le1/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v9, Lw2/d$a;

    invoke-direct {v9, v1}, Lw2/d$a;-><init>(Lw2/d;)V

    new-instance v16, Lu2/b;

    iget-object v2, v1, Lw2/a;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->p()La2/g$a;

    move-result-object v3

    iget-object v2, v1, Lw2/a;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, v16

    move-object/from16 v5, p1

    move-object v7, v15

    invoke-direct/range {v2 .. v9}, Lu2/b;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;Lj0/a;Le1/c;La2/g$b;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    invoke-virtual/range {v16 .. v16}, Lu2/b;->d()V

    invoke-virtual {v1, v15, v14}, Lw2/g;->e(Le1/c;Z)Z

    invoke-virtual {v1, v15}, Lw2/g;->d(Le1/c;)V

    invoke-virtual {v15}, Le1/c;->c()Lj0/a;

    move-result-object v2

    iget-object v3, v2, Lj0/a;->q:Ljava/lang/String;

    iget-object v4, v1, Lw2/a;->b:Lx2/g;

    invoke-virtual {v4, v3}, Lx2/g;->g(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lw2/g;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lw2/g;->f:Lx2/a;

    invoke-virtual {v4, v3, v2, v10}, Lx2/a;->i(Ljava/lang/String;Lj0/a;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v2, v2, Lj0/a;->r:J

    invoke-virtual {v1, v0, v2, v3, v10}, Lw2/d;->m(Ljava/lang/String;JLjava/lang/String;)Z

    aput-boolean v12, v13, v14
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lw2/h;->a()V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear a temp folder = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x138

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform() : Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    new-instance v0, La3/f;

    iget-object v2, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, La3/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, La3/f;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v2, "CreateTempLocalNoteThread"

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v2, Lw2/d$b;

    invoke-direct {v2, v1, v13}, Lw2/d$b;-><init>(Lw2/d;[Z)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lw2/h;->a()V

    throw v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    const-string v0, "SyncNote/SyncSDocxCreateTempLocalNote"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "current_server_note_info.json"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "readSyncModifiedTime() : json obj is null"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "serverResourceId"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "syncModifiedTime"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    move-wide v2, p1

    goto :goto_1

    :cond_1
    const-string p1, "readSyncModifiedTime() : serverId is different!"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readSyncModifiedTime() : Exception = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-wide v2
.end method

.method public final m(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 3

    const-string v0, "SyncNote/SyncSDocxCreateTempLocalNote"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "serverResourceId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "syncModifiedTime"

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "current_server_note_info.json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "writeTrackingInfo() : failed to delete tempServerNoteInfoFile"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "writeTrackingInfo() : failed to createNewFile tempServerNoteInfoFile"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "writeTrackingInfo() : Exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
