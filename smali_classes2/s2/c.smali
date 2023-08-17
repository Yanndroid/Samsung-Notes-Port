.class public Ls2/c;
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

    iput-object v0, p0, Ls2/c;->f:Ljava/lang/String;

    iput-object p1, p0, Ls2/c;->a:Lt2/b;

    iput-object p2, p0, Ls2/c;->b:Lt2/c;

    iput-object p3, p0, Ls2/c;->c:Lp2/a;

    invoke-virtual {p1}, Lt2/b;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls2/c;->d:Ljava/lang/String;

    iget-object p1, p0, Ls2/c;->a:Lt2/b;

    invoke-virtual {p1}, Lx2/d;->d()J

    move-result-wide p1

    iput-wide p1, p0, Ls2/c;->e:J

    return-void
.end method

.method public static bridge synthetic a(Ls2/c;)Lt2/b;
    .locals 0

    iget-object p0, p0, Ls2/c;->a:Lt2/b;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ld1/h;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "favorite"

    const-string v3, "deleted"

    const-string/jumbo v4, "uuid"

    const-string v5, "extra_timestamp"

    const-string v6, "file_info"

    const-string v7, "[DEL] InputStream close - Exception = "

    const-string v8, "category_uuid"

    const-string v9, "[DEL] Fail to read extra list - "

    const-string v10, "SyncOldNote$SyncExtraList"

    const-string v11, "[DEL] Start to get extra list of server"

    invoke-static {v10, v11}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x130

    :try_start_0
    new-instance v13, Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1b
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    iget-object v14, v1, Ls2/c;->d:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v15

    invoke-virtual {v15}, Lx/e;->s()Lg0/b;

    move-result-object v15

    const/4 v12, 0x1

    invoke-interface {v15, v14, v13, v12, v12}, Lg0/b;->unzip(Ljava/io/File;Ljava/io/File;ZZ)V

    const-string v12, "[DEL] Finished to unzip!"

    invoke-static {v10, v12}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".json"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v12

    invoke-virtual {v12}, Lx/e;->s()Lg0/b;

    move-result-object v12

    invoke-interface {v12}, Lg0/b;->getUnzippedFileName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "extra.list.json"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1b
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-nez v13, :cond_1

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DEL] unzipped file is not extra.list.json : "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Ls2/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "e"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEL] Failed to read extra list of server : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    invoke-direct {v2, v11, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v4, v7

    move-object v2, v10

    goto/16 :goto_10

    :cond_1
    :goto_0
    :try_start_3
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1b
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    :try_start_4
    invoke-static {v12}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_16
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    const/16 v16, 0x0

    move/from16 v11, v16

    :goto_1
    if-ge v11, v14, :cond_4

    move-object/from16 v17, v9

    :try_start_5
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 p1, v12

    move-object/from16 v16, v13

    :try_start_6
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v24, v7

    :try_start_7
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v25, v14

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v26, v0

    :goto_2
    move-object/from16 v27, v10

    move-object/from16 v0, v18

    goto :goto_3

    :cond_2
    move-object/from16 v26, v0

    const-string v0, "[DEL] No category uuid!"

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "1"
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :goto_3
    :try_start_8
    new-instance v10, Ld1/h;

    const-string v20, "extra.list"

    const-wide/16 v22, 0x0

    move-object/from16 v18, v10

    move-object/from16 v19, v7

    invoke-direct/range {v18 .. v23}, Ld1/h;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v10, v14}, Ld1/h;->t(Z)V

    invoke-virtual {v10, v0}, Ld1/h;->s(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ld1/h;->y(J)V

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->C()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, p1

    move-object/from16 v13, v16

    move-object/from16 v9, v17

    move-object/from16 v7, v24

    move/from16 v14, v25

    move-object/from16 v0, v26

    move-object/from16 v10, v27

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v12, p1

    move-object v3, v0

    move-object v2, v10

    move-object/from16 v4, v24

    goto/16 :goto_17

    :catch_0
    move-exception v0

    move-object/from16 v12, p1

    move-object v2, v10

    move-object/from16 v4, v24

    goto/16 :goto_11

    :catch_1
    move-exception v0

    move-object/from16 v12, p1

    move-object v2, v10

    move-object/from16 v5, v17

    move-object/from16 v4, v24

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object/from16 v12, p1

    move-object v2, v10

    move-object/from16 v5, v17

    move-object/from16 v4, v24

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 p1, v12

    :goto_4
    move-object v3, v0

    move-object v4, v7

    move-object v2, v10

    goto/16 :goto_17

    :catch_6
    move-exception v0

    move-object/from16 p1, v12

    :goto_5
    move-object v4, v7

    move-object v2, v10

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move-object/from16 p1, v12

    :goto_6
    move-object v4, v7

    move-object v2, v10

    goto/16 :goto_d

    :catch_8
    move-exception v0

    move-object/from16 p1, v12

    :goto_7
    move-object v4, v7

    move-object v2, v10

    goto/16 :goto_f

    :cond_4
    move-object/from16 v24, v7

    move-object/from16 v17, v9

    move-object/from16 v27, v10

    move-object/from16 p1, v12

    move/from16 v25, v14

    :try_start_9
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-lez v2, :cond_5

    :try_start_a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ls2/c;->f:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object/from16 v12, p1

    move-object v3, v0

    move-object/from16 v4, v24

    move-object/from16 v2, v27

    goto/16 :goto_17

    :catch_9
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v4, v24

    move-object/from16 v2, v27

    goto/16 :goto_11

    :catch_a
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v5, v17

    move-object/from16 v4, v24

    move-object/from16 v2, v27

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v5, v17

    move-object/from16 v4, v24

    move-object/from16 v2, v27

    goto/16 :goto_15

    :cond_5
    :goto_8
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEL] Finished to get serverCList #: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object/from16 v2, v27

    :try_start_c
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_9

    :catch_c
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-object v15

    :catchall_5
    move-exception v0

    move-object/from16 v4, v24

    goto :goto_a

    :catch_d
    move-exception v0

    move-object/from16 v4, v24

    goto :goto_b

    :catch_e
    move-exception v0

    move-object/from16 v4, v24

    goto :goto_c

    :catch_f
    move-exception v0

    move-object/from16 v4, v24

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object/from16 v4, v24

    move-object/from16 v2, v27

    goto :goto_a

    :catch_10
    move-exception v0

    move-object/from16 v4, v24

    move-object/from16 v2, v27

    goto :goto_b

    :catch_11
    move-exception v0

    move-object/from16 v4, v24

    move-object/from16 v2, v27

    goto :goto_c

    :catch_12
    move-exception v0

    move-object/from16 v4, v24

    move-object/from16 v2, v27

    goto :goto_e

    :cond_6
    move-object v4, v7

    move-object/from16 v17, v9

    move-object v2, v10

    move-object/from16 p1, v12

    :try_start_e
    const-string v0, "[DEL] Failed to read extra list of server!"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ls0/c;

    const/16 v5, 0x130

    invoke-direct {v3, v5, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_14
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_13
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception v0

    :goto_a
    move-object/from16 v12, p1

    goto/16 :goto_16

    :catch_13
    move-exception v0

    :goto_b
    move-object/from16 v12, p1

    goto/16 :goto_11

    :catch_14
    move-exception v0

    :goto_c
    move-object/from16 v12, p1

    :goto_d
    move-object/from16 v5, v17

    goto/16 :goto_13

    :catch_15
    move-exception v0

    :goto_e
    move-object/from16 v12, p1

    :goto_f
    move-object/from16 v5, v17

    goto/16 :goto_15

    :catchall_8
    move-exception v0

    move-object v4, v7

    move-object v2, v10

    move-object/from16 p1, v12

    goto/16 :goto_16

    :catch_16
    move-exception v0

    move-object v4, v7

    move-object/from16 v17, v9

    move-object v2, v10

    move-object/from16 p1, v12

    goto :goto_11

    :catch_17
    move-exception v0

    move-object v4, v7

    move-object v2, v10

    move-object/from16 p1, v12

    move-object v5, v9

    goto :goto_13

    :catch_18
    move-exception v0

    move-object v4, v7

    move-object v2, v10

    move-object/from16 p1, v12

    move-object v5, v9

    goto/16 :goto_15

    :catch_19
    move-exception v0

    move-object v4, v7

    move-object v2, v10

    move-object v5, v9

    goto :goto_12

    :catch_1a
    move-exception v0

    move-object v4, v7

    move-object v2, v10

    move-object v5, v9

    goto :goto_14

    :catchall_9
    move-exception v0

    move-object v4, v7

    move-object v2, v10

    move-object v3, v0

    :goto_10
    const/4 v12, 0x0

    goto/16 :goto_17

    :catch_1b
    move-exception v0

    move-object v4, v7

    move-object/from16 v17, v9

    move-object v2, v10

    const/4 v12, 0x0

    :goto_11
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ls0/c;

    const/16 v5, 0x130

    invoke-direct {v3, v5, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v3

    :catch_1c
    move-exception v0

    move-object v4, v7

    move-object v5, v9

    move-object v2, v10

    :goto_12
    const/4 v12, 0x0

    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ls0/c;

    const/16 v5, 0x138

    invoke-direct {v3, v5, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v3

    :catch_1d
    move-exception v0

    move-object v4, v7

    move-object v5, v9

    move-object v2, v10

    :goto_14
    const/4 v12, 0x0

    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ls0/c;

    const/16 v5, 0x13f

    invoke-direct {v3, v5, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    :catchall_a
    move-exception v0

    :goto_16
    move-object v3, v0

    :goto_17
    if-eqz v12, :cond_7

    :try_start_10
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1e

    goto :goto_18

    :catch_1e
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_18
    throw v3
.end method

.method public final c(Ljava/util/HashMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "[UEL] Failed to makeFileInfoJSON() - "

    const-string v3, "SyncOldNote$SyncExtraList"

    const/16 v4, 0x138

    :try_start_0
    iget-object v0, v1, Ls2/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v6, v1, Ls2/c;->f:Ljava/lang/String;

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

    iget-object v9, v1, Ls2/c;->a:Lt2/b;

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

    const-string v10, "extra_timestamp"

    const-string v11, "category_uuid"

    const-string v12, "favorite"

    const-string v13, "deleted"

    const-string/jumbo v14, "uuid"

    if-eqz v9, :cond_6

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v15, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v15}, Lt2/b;->C()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    if-lez v15, :cond_3

    iget-object v15, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v15}, Lt2/b;->C()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v15, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v15}, Lt2/b;->C()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v15}, Lt2/b;->C()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/notes/sync/db/d;->a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/db/e;

    move-result-object v15

    invoke-virtual {v5, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v15}, Lcom/samsung/android/app/notes/sync/db/e;->b()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v15}, Lcom/samsung/android/app/notes/sync/db/e;->c()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v5, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v12

    invoke-virtual {v12}, Lx/e;->h()Lb0/a;

    move-result-object v12

    iget-object v13, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v13

    invoke-interface {v12, v13, v9}, Lb0/a;->getNoteCategoryUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v15}, Lcom/samsung/android/app/notes/sync/db/e;->a()J

    move-result-wide v11

    invoke-virtual {v5, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_2

    :cond_6
    iget-object v5, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld1/h;

    iget-object v9, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->C()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_7

    iget-object v9, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->C()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->C()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->C()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    :goto_6
    if-nez v15, :cond_8

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    :cond_8
    invoke-virtual {v15, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Ld1/h;->q()I

    move-result v8

    invoke-virtual {v15, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v7}, Ld1/h;->r()Z

    move-result v8

    invoke-virtual {v15, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v7}, Ld1/h;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Ld1/h;->f()J

    move-result-wide v7

    invoke-virtual {v15, v10, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    :cond_9
    const-string v5, "file_info"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Ls2/c;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "extra.list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "[UEL] failed to delete makeFileInfoJSON"

    if-eqz v8, :cond_a

    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v3, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_d

    :try_start_3
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "UTF-8"

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->s()Lg0/b;

    move-result-object v0

    invoke-interface {v0, v6, v5}, Lg0/b;->zip(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v3, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    move-object v5, v8

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_c
    throw v0

    :cond_d
    const-string v0, "[UEL] Failed to create makeFileInfoJSON"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ls0/c;

    invoke-direct {v5, v4, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    invoke-direct {v2, v4, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

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
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Ls2/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "extra.list"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v5, "SyncOldNote$SyncExtraList"

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[DEL] failed to delete SyncExtraList"

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, v1, Ls2/c;->b:Lt2/c;

    invoke-virtual {v0, v2}, Lt2/c;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->p()La2/d$e;

    move-result-object v0

    iget-object v2, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    const-string v6, "extra_uuid_version"

    iget-object v7, v1, Ls2/c;->d:Ljava/lang/String;

    invoke-static {v0, v2, v6, v7}, La2/d;->c(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DEL] Fail to download extra list : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, v1, Ls2/c;->c:Lp2/a;

    invoke-interface {v0}, Lp2/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[DEL] Cancelled in Extra List"

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1, v3}, Ls2/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEL] Handle the extra list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld1/h;

    invoke-virtual {v6}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/samsung/android/app/notes/sync/db/d;

    iget-object v6, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lcom/samsung/android/app/notes/sync/db/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/db/d;->c()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ld1/h;

    invoke-virtual {v6}, Ld1/h;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/samsung/android/app/notes/sync/db/d;->a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/db/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/e;->g()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v0, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/e;->a()J

    move-result-wide v7

    invoke-virtual {v6}, Ld1/h;->f()J

    move-result-wide v10

    cmp-long v12, v10, v7

    const-string v13, "[DEL] Move to the recycle bin"

    const-string v14, "[DEL] restoreSDoc"

    const-string v15, " , serverTime = "

    if-lez v12, :cond_a

    invoke-virtual {v6}, Ld1/h;->q()I

    move-result v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    const-string v3, "[DEL] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : localTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DEL] Update deleted state : deleted in server = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/e;->b()I

    move-result v2

    if-eq v2, v12, :cond_6

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    invoke-interface {v2}, Lb0/b;->getSdocContractNo()I

    move-result v2

    if-ne v12, v2, :cond_5

    invoke-static {v5, v14}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    iget-object v3, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x1

    invoke-interface {v2, v3, v9, v7}, Lb0/b;->restoreSDoc(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    const/4 v7, 0x1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    invoke-interface {v2}, Lb0/b;->getSdocContractToRecycleBin()I

    move-result v2

    if-ne v12, v2, :cond_6

    invoke-static {v5, v13}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    iget-object v3, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v9, v12, v7}, Lb0/b;->deleteSDoc(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DEL] Update favorite : isFavorite in server is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ld1/h;->r()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    iget-object v3, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v6}, Ld1/h;->r()Z

    move-result v7

    const/4 v8, 0x1

    invoke-interface {v2, v3, v9, v7, v8}, Lb0/b;->setNoteFavorite(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "[DEL] Fail to set favorite. There is no field"

    invoke-static {v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/e;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->isFavorite(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v6}, Ld1/h;->r()Z

    move-result v3

    if-eq v2, v3, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DEL] Update favorite in file : isFavorite = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ld1/h;->r()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkCompat;->with(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;->asSpenSDocFile()Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;

    invoke-virtual {v6}, Ld1/h;->r()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->setFavorite(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DEL] Fail to save favorite to the file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string v0, "[DEL] Update category in server"

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    invoke-virtual {v6}, Ld1/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lb0/a;->getCategoryDeleted(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    invoke-interface {v2}, Lb0/b;->getSdocContractNo()I

    move-result v2

    const-string v3, "[DEL] Fail to set category!"

    if-ne v0, v2, :cond_9

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v7

    iget-object v0, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Ld1/h;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0}, Lb0/b;->getSdocContractNo()I

    move-result v11

    invoke-virtual {v6}, Ld1/h;->f()J

    move-result-wide v12

    invoke-interface/range {v7 .. v13}, Lb0/a;->setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v0

    const-string v2, "[DEL] try to set name category in server"

    invoke-static {v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_d

    goto :goto_5

    :cond_9
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v7

    iget-object v0, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0}, Lb0/b;->getSdocContractNo()I

    move-result v11

    invoke-virtual {v6}, Ld1/h;->f()J

    move-result-wide v12

    const-string v10, "1"

    invoke-interface/range {v7 .. v13}, Lb0/a;->setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v0

    if-nez v0, :cond_d

    :goto_5
    invoke-static {v5, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    move-object/from16 v16, v3

    if-nez v12, :cond_c

    invoke-virtual {v6}, Ld1/h;->q()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DEL] Check deleted state in server : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/e;->b()I

    move-result v0

    if-eq v0, v2, :cond_d

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0}, Lb0/b;->getSdocContractNo()I

    move-result v0

    if-ne v2, v0, :cond_b

    invoke-static {v5, v14}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    iget-object v2, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v9, v3}, Lb0/b;->restoreSDoc(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0}, Lb0/b;->getSdocContractToRecycleBin()I

    move-result v0

    if-ne v2, v0, :cond_d

    invoke-static {v5, v13}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    iget-object v6, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v0, v6, v9, v2, v3}, Lb0/b;->deleteSDoc(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEL] not updated : localTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_6
    move-object/from16 v3, v16

    goto/16 :goto_2

    :cond_e
    const-string v0, "[DEL] Finished to Handle the extra list"

    goto :goto_7

    :cond_f
    const-string v0, "[DEL] No downloaded file!"

    :goto_7
    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method public e()Z
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->G()Z

    move-result v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->h()Lb0/a;

    move-result-object v3

    iget-object v4, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lb0/a;->getDirtyCountOfNoteCategory(Landroid/content/Context;)I

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

    invoke-virtual {v0, v2}, Lt2/b;->T(Z)V

    iget-object v0, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "SyncOldNote$SyncExtraList"

    const-string v0, "[UEL] Need to update Server"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ld1/h;

    const-string v7, "extra_uuid_version"

    const-string v8, "extra.list"

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractNo()I

    move-result v9

    iget-wide v10, v1, Ls2/c;->e:J

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Ld1/h;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v0}, Ld1/h;->K()Lorg/json/JSONObject;

    move-result-object v17

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v3, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lb0/a;->getUuidAndNoteCategoryTimeList(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "[UEL] update list is null"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-virtual {v1, v0}, Ls2/c;->c(Ljava/util/HashMap;)V

    iget-object v3, v1, Ls2/c;->c:Lp2/a;

    invoke-interface {v3}, Lp2/a;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "[UEL] Cancelled Extra List"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Ls2/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "extra.list"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v3, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->p()La2/d$e;

    move-result-object v12

    iget-object v3, v1, Ls2/c;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v13

    const-string v15, "extra_uuid_version"

    iget-wide v5, v1, Ls2/c;->e:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    new-instance v3, Ls2/c$a;

    invoke-direct {v3, v1, v0, v14}, Ls2/c$a;-><init>(Ls2/c;Ljava/util/HashMap;Ljava/lang/String;)V

    move-object/from16 v18, v3

    invoke-static/range {v12 .. v18}, La2/d;->m(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;La2/d$f;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UEL] success to upload Extra List : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[UEL] Finished to update Server"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "[UEL] Failed to upload Extra List"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UEL] Failed to to upload Extra List : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v2, 0x130

    const-string v3, "Failed to upload category"

    invoke-direct {v0, v2, v3}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return v4
.end method
