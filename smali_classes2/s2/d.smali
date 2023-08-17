.class public Ls2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt2/b;

.field public b:Lt2/c;

.field public c:Lp2/a;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt2/b;Lt2/c;Lp2/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls2/d;->f:Ljava/lang/String;

    iput-object p1, p0, Ls2/d;->a:Lt2/b;

    iput-object p2, p0, Ls2/d;->b:Lt2/c;

    iput-object p3, p0, Ls2/d;->c:Lp2/a;

    invoke-virtual {p1}, Lt2/b;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls2/d;->d:Ljava/lang/String;

    iget-object p1, p0, Ls2/d;->a:Lt2/b;

    invoke-virtual {p1}, Lx2/d;->d()J

    move-result-wide p1

    iput-wide p1, p0, Ls2/d;->e:J

    return-void
.end method

.method public static bridge synthetic a(Ls2/d;)Lt2/b;
    .locals 0

    iget-object p0, p0, Ls2/d;->a:Lt2/b;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ld1/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "lastMappedAt"

    const-string/jumbo v3, "timestamp"

    const-string/jumbo v4, "uuid"

    const-string v5, "file_info"

    const-string v6, "[DEIL] InputStream close - Exception = "

    const-string v7, "[DEIL] Fail to read extra info list - "

    const-string v8, "SyncOldNote$SyncExtraListInfo"

    const-string v9, "[DEIL] Start to get extra info list of server"

    invoke-static {v8, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x130

    const/4 v10, 0x0

    :try_start_0
    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Ls2/d;->d:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v13

    invoke-virtual {v13}, Lx/e;->s()Lg0/b;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v12, v11, v14, v14}, Lg0/b;->unzip(Ljava/io/File;Ljava/io/File;ZZ)V

    const-string v11, "[DEIL] Finished to unzip!"

    invoke-static {v8, v11}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".json"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v11

    invoke-virtual {v11}, Lx/e;->s()Lg0/b;

    move-result-object v11

    invoke-interface {v11}, Lg0/b;->getUnzippedFileName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "extra_info.list.json"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DEIL] unzipped file is not extra_info.list.json : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Ls2/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "e"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEIL] Failed to read extra list info of server : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    invoke-direct {v2, v9, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v11}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_3

    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 p1, v10

    new-instance v10, Ld1/c;

    move-object/from16 v16, v10

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v21}, Ld1/c;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v16

    if-lez v16, :cond_2

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    iget-object v2, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->B()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    :goto_2
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, p1

    move-object/from16 v2, v16

    const/16 v9, 0x130

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ls2/d;->f:Ljava/lang/String;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEIL] Finished to get serverCList #: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v13

    :cond_5
    :try_start_3
    const-string v0, "[DEIL] Failed to read extra info list of server!"

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x130

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v10, v11

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v10, v11

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v10, v11

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v10, v11

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_4
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x130

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_5
    move-exception v0

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x138

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_6
    move-exception v0

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x13f

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_7
    if-eqz v10, :cond_6

    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_8
    throw v2
.end method

.method public final c(Ljava/util/HashMap;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    const-string v2, "[UEIL] Failed to makeFileInfoJSON() - "

    const-string v3, "SyncOldNote$SyncExtraListInfo"

    :try_start_0
    iget-object v0, v1, Ls2/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v6, v1, Ls2/d;->f:Ljava/lang/String;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v8, Lcom/samsung/android/app/notes/sync/db/d;

    iget-object v9, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/samsung/android/app/notes/sync/db/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v8}, Lcom/samsung/android/app/notes/sync/db/d;->c()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "lastMappedAt"

    const-string/jumbo v11, "timestamp"

    const-string/jumbo v12, "uuid"

    if-eqz v9, :cond_5

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v13, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->B()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_3

    iget-object v13, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->B()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->B()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->B()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    if-nez v14, :cond_4

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/notes/sync/db/d;->a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/db/e;

    move-result-object v13

    invoke-virtual {v14, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v13}, Lcom/samsung/android/app/notes/sync/db/e;->f()J

    move-result-wide v4

    invoke-virtual {v14, v11, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v13}, Lcom/samsung/android/app/notes/sync/db/e;->e()J

    move-result-wide v4

    invoke-virtual {v14, v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_5
    iget-object v4, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->w()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->w()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld1/c;

    iget-object v8, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v8}, Lt2/b;->B()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_6

    iget-object v8, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v8}, Lt2/b;->B()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v8}, Lt2/b;->B()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v8}, Lt2/b;->B()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    if-nez v13, :cond_7

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {v13, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Ld1/c;->c()J

    move-result-wide v7

    invoke-virtual {v13, v11, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v5}, Ld1/c;->a()J

    move-result-wide v7

    invoke-virtual {v13, v10, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_8
    const-string v4, "file_info"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Ls2/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "extra_info.list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "[UEIL] failed to delete makeFileInfoJSON"

    if-eqz v7, :cond_9

    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v3, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v7, :cond_c

    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "UTF-8"

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->s()Lg0/b;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lg0/b;->zip(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v3, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    move-object v5, v7

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    throw v0

    :cond_c
    const-string v0, "[UEIL] Failed to create makeFileInfoJSON"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ls0/c;

    const/16 v5, 0x138

    invoke-direct {v4, v5, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x138

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x130

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public d()Z
    .locals 18

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Ls2/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "extra_info.list"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v5, "SyncOldNote$SyncExtraListInfo"

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[DEIL] failed to delete SyncExtraListInfo"

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, v1, Ls2/d;->b:Lt2/c;

    invoke-virtual {v0, v2}, Lt2/c;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->p()La2/d$e;

    move-result-object v0

    iget-object v2, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    const-string v6, "extra_info_version"

    iget-object v7, v1, Ls2/d;->d:Ljava/lang/String;

    invoke-static {v0, v2, v6, v7}, La2/d;->c(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DEIL] Fail to download mapped list : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, v1, Ls2/d;->c:Lp2/a;

    invoke-interface {v0}, Lp2/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[DEIL] Cancelled in mapped List"

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1, v3}, Ls2/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DEIL] Handle the extra info list : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld1/c;

    invoke-virtual {v7}, Ld1/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/samsung/android/app/notes/sync/db/d;

    iget-object v7, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v7}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/samsung/android/app/notes/sync/db/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/notes/sync/db/d;->c()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld1/c;

    invoke-virtual {v4}, Ld1/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/notes/sync/db/d;->a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/db/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/notes/sync/db/e;->g()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v8, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v8}, Lt2/b;->w()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lcom/samsung/android/app/notes/sync/db/e;->f()J

    move-result-wide v9

    invoke-virtual {v4}, Ld1/c;->c()J

    move-result-wide v11

    invoke-virtual {v8}, Lcom/samsung/android/app/notes/sync/db/e;->e()J

    move-result-wide v13

    move-object v8, v2

    move-object v15, v3

    invoke-virtual {v4}, Ld1/c;->a()J

    move-result-wide v2

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    const-string v6, "[Converted] performDownload() : localSDocServerTime = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , serverSDocServerTime = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , localSDocLastMappedAt = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , serverSDocLastMappedAt = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v11, v9

    const-wide/16 v9, 0x0

    if-lez v0, :cond_5

    iget-object v0, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    if-nez v0, :cond_7

    cmp-long v0, v2, v9

    if-eqz v0, :cond_7

    cmp-long v0, v2, v13

    if-lez v0, :cond_6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v4, v15

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move-object v4, v15

    if-nez v0, :cond_8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    :goto_3
    move-object v4, v15

    :cond_8
    :goto_4
    cmp-long v0, v13, v2

    if-lez v0, :cond_9

    cmp-long v0, v2, v9

    if-eqz v0, :cond_a

    iget-object v0, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMappedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;->delete(Ljava/lang/String;J)V

    goto :goto_5

    :cond_9
    cmp-long v0, v13, v9

    if-eqz v0, :cond_a

    iget-object v0, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMappedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;

    move-result-object v0

    invoke-virtual {v0, v7, v13, v14}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;->delete(Ljava/lang/String;J)V

    :cond_a
    :goto_5
    move-object v3, v4

    move-object v2, v8

    move-object/from16 v0, v16

    move-object/from16 v6, v17

    goto/16 :goto_2

    :cond_b
    move-object v8, v2

    move-object v4, v3

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/p;

    iget-object v2, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/notes/sync/db/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/notes/sync/db/p;->a(Ljava/util/HashMap;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/p;

    iget-object v2, v1, Ls2/d;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/notes/sync/db/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/notes/sync/db/p;->d(Ljava/util/HashMap;)Z

    const-string v0, "[DEIL] Finished to Handle the extra info list"

    goto :goto_6

    :cond_c
    const-string v0, "[DEIL] No downloaded file!"

    :goto_6
    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 15

    const-string v0, "extra_info.list"

    iget-object v1, p0, Ls2/d;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->F()Z

    move-result v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    iget-object v4, p0, Ls2/d;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lb0/b;->getDirtyCountOfNoteExtraInfo(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lt2/b;->S(Z)V

    iget-object v1, p0, Ls2/d;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->F()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SyncOldNote$SyncExtraListInfo"

    const-string v2, "[UEIL] Need to update Server"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ld1/h;

    const-string v3, "extra_info_version"

    iget-wide v6, p0, Ls2/d;->e:J

    invoke-direct {v2, v3, v0, v6, v7}, Ld1/h;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2}, Ld1/h;->K()Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    iget-object v3, p0, Ls2/d;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lb0/b;->getUuidAndNoteTimeList(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "[UEIL] update list is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-virtual {p0, v2}, Ls2/d;->c(Ljava/util/HashMap;)V

    iget-object v3, p0, Ls2/d;->c:Lp2/a;

    invoke-interface {v3}, Lp2/a;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "[UEIL] Cancelled Extra Info List"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ls2/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Ls2/d;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->p()La2/d$e;

    move-result-object v8

    iget-object v0, p0, Ls2/d;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v9

    const-string v11, "extra_info_version"

    iget-wide v5, p0, Ls2/d;->e:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ls2/d$a;

    invoke-direct {v14, p0, v2, v10}, Ls2/d$a;-><init>(Ls2/d;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static/range {v8 .. v14}, La2/d;->m(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;La2/d$f;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UEIL] success to upload Extra Info List : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[UEIL] Finished to update Server"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "[UEIL] Failed to upload Extra Info List"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UEIL] Failed to to upload Extra Info List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x130

    const-string v2, "Failed to upload category"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return v4
.end method
