.class public Ls2/e;
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

    iput-object v0, p0, Ls2/e;->f:Ljava/lang/String;

    iput-object p1, p0, Ls2/e;->a:Lt2/b;

    iput-object p2, p0, Ls2/e;->b:Lt2/c;

    iput-object p3, p0, Ls2/e;->c:Lp2/a;

    invoke-virtual {p1}, Lt2/b;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls2/e;->d:Ljava/lang/String;

    iget-object p1, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {p1}, Lx2/d;->d()J

    move-result-wide p1

    iput-wide p1, p0, Ls2/e;->e:J

    return-void
.end method

.method public static bridge synthetic a(Ls2/e;)Lt2/b;
    .locals 0

    iget-object p0, p0, Ls2/e;->a:Lt2/b;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ld1/i;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "tag_extra_info"

    const-string v3, "tag_uuid"

    const-string v4, "file_info"

    const-string v5, "[DELT] InputStream close - Exception = "

    const-string v6, "[DELT] Fail to read extra tag list - "

    const-string v7, "SyncOldNote$SyncExtraListTag"

    const-string v8, "[DELT] Start to get extra tag list of server"

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Ls2/e;->d:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v12

    invoke-virtual {v12}, Lx/e;->s()Lg0/b;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v11, v10, v13, v13}, Lg0/b;->unzip(Ljava/io/File;Ljava/io/File;ZZ)V

    new-instance v10, Ljava/io/FileInputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".json"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-static {v10}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_4

    :try_start_2
    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v14, "uuid"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "tag_uuid_list"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object/from16 v25, v11

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v26, v6

    :try_start_3
    const-string v6, "extra_timestamp"
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v27, v5

    :try_start_4
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v28, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_3

    move/from16 v29, v11

    :try_start_5
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    goto :goto_2

    :cond_0
    move-object/from16 v30, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v3

    const-string v3, "[DELT] No tag extra info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    :goto_2
    if-nez v16, :cond_1

    const-string v2, ""

    move-object/from16 v19, v2

    goto :goto_3

    :cond_1
    move-object/from16 v19, v16

    :goto_3
    const-string v2, "deleted"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;

    move-object/from16 v16, v2

    move-object/from16 v17, v14

    move-wide/from16 v23, v5

    invoke-direct/range {v16 .. v24}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    const-string v2, "[DELT] No tag uuid list!"

    invoke-static {v7, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    goto :goto_1

    :cond_3
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    new-instance v2, Ld1/i;

    invoke-direct {v2, v14, v9, v5, v6}, Ld1/i;-><init>(Ljava/lang/String;Ljava/util/ArrayList;J)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move-object/from16 v10, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v28, v10

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v28, v10

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v28, v10

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v28, v10

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v28, v10

    move-object v3, v5

    goto/16 :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v28, v10

    move-object v3, v5

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v28, v10

    move-object v2, v0

    move-object v3, v5

    goto/16 :goto_f

    :catch_6
    move-exception v0

    move-object/from16 v26, v6

    :goto_5
    move-object/from16 v28, v10

    move-object v3, v5

    goto/16 :goto_10

    :catch_7
    move-exception v0

    move-object/from16 v28, v10

    move-object v3, v5

    goto/16 :goto_11

    :catch_8
    move-exception v0

    move-object/from16 v28, v10

    move-object v3, v5

    goto/16 :goto_13

    :cond_4
    move-object/from16 v27, v5

    move-object/from16 v26, v6

    move-object/from16 v28, v10

    :try_start_6
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-lez v2, :cond_5

    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ls2/e;->f:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    :goto_6
    move-object v2, v0

    move-object/from16 v3, v27

    goto/16 :goto_f

    :catch_9
    move-exception v0

    :goto_7
    move-object/from16 v4, v26

    move-object/from16 v3, v27

    goto/16 :goto_12

    :catch_a
    move-exception v0

    :goto_8
    move-object/from16 v4, v26

    move-object/from16 v3, v27

    goto/16 :goto_14

    :cond_5
    :goto_9
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DELT] Finished to get serverCList #: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-object v13

    :catchall_3
    move-exception v0

    move-object/from16 v3, v27

    goto :goto_e

    :catch_c
    move-exception v0

    :goto_b
    move-object/from16 v3, v27

    goto :goto_10

    :catch_d
    move-exception v0

    move-object/from16 v3, v27

    goto :goto_c

    :catch_e
    move-exception v0

    move-object/from16 v3, v27

    goto :goto_d

    :cond_6
    move-object v3, v5

    move-object/from16 v26, v6

    move-object/from16 v28, v10

    :try_start_a
    const-string v0, "[DELT] Failed to read extra tag list of server!"

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v4, 0x130

    invoke-direct {v2, v4, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_e

    :catch_f
    move-exception v0

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_c
    move-object/from16 v4, v26

    goto :goto_12

    :catch_11
    move-exception v0

    :goto_d
    move-object/from16 v4, v26

    goto :goto_14

    :catchall_5
    move-exception v0

    move-object v3, v5

    move-object/from16 v28, v10

    :goto_e
    move-object v2, v0

    :goto_f
    move-object/from16 v9, v28

    goto/16 :goto_18

    :catch_12
    move-exception v0

    move-object v3, v5

    move-object/from16 v26, v6

    move-object/from16 v28, v10

    :goto_10
    move-object/from16 v9, v28

    goto :goto_15

    :catch_13
    move-exception v0

    move-object v3, v5

    move-object/from16 v28, v10

    :goto_11
    move-object v4, v6

    :goto_12
    move-object/from16 v9, v28

    goto :goto_16

    :catch_14
    move-exception v0

    move-object v3, v5

    move-object/from16 v28, v10

    :goto_13
    move-object v4, v6

    :goto_14
    move-object/from16 v9, v28

    goto :goto_17

    :catchall_6
    move-exception v0

    move-object v3, v5

    move-object v2, v0

    const/4 v9, 0x0

    goto :goto_18

    :catch_15
    move-exception v0

    move-object v3, v5

    move-object/from16 v26, v6

    const/4 v9, 0x0

    :goto_15
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v4, 0x130

    invoke-direct {v2, v4, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_16
    move-exception v0

    move-object v3, v5

    move-object v4, v6

    const/4 v9, 0x0

    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v4, 0x138

    invoke-direct {v2, v4, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_17
    move-exception v0

    move-object v3, v5

    move-object v4, v6

    const/4 v9, 0x0

    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v4, 0x13f

    invoke-direct {v2, v4, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    :goto_18
    if-eqz v9, :cond_7

    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_18

    goto :goto_19

    :catch_18
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_19
    throw v2
.end method

.method public final d(Ljava/util/HashMap;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "[UELT] Failed to makeFileInfoJSON() - "

    const-string v3, "SyncOldNote$SyncExtraListTag"

    :try_start_0
    iget-object v0, v1, Ls2/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v6, v1, Ls2/e;->f:Ljava/lang/String;

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

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    const-string/jumbo v9, "timestamp"

    const-string v10, "deleted"

    const-string v12, "tag_extra_info"

    const-string v13, "tag_uuid"

    const-string v14, "extra_timestamp"

    const-string v15, "tag_uuid_list"

    const-string/jumbo v5, "uuid"

    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lx/e;->k()Lb0/c;

    move-result-object v4

    iget-object v11, v1, Ls2/e;->a:Lt2/b;

    invoke-virtual {v11}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v4, v11, v8}, Lb0/c;->getNoteTagUUIDList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v16, v7

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v19, v2

    :try_start_2
    move-object/from16 v2, v18

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v18, v3

    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v20

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Lx/e;->k()Lb0/c;

    move-result-object v0

    move-object/from16 v20, v13

    iget-object v13, v1, Ls2/e;->a:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v13

    invoke-interface {v0, v13, v8, v2}, Lb0/c;->getNoteTagExtraInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->k()Lb0/c;

    move-result-object v0

    iget-object v13, v1, Ls2/e;->a:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v13

    invoke-interface {v0, v13, v8, v2}, Lb0/c;->getNoteTagDeleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->k()Lb0/c;

    move-result-object v0

    iget-object v13, v1, Ls2/e;->a:Lt2/b;

    invoke-virtual {v13}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v22, v12

    invoke-interface {v0, v13, v8, v2}, Lb0/c;->getNoteTagModifiedTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v3, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    move-object/from16 v13, v20

    move-object/from16 v0, v21

    move-object/from16 v12, v22

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v5, v3

    goto/16 :goto_7

    :cond_2
    move-object/from16 v21, v0

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    invoke-virtual {v11, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->k()Lb0/c;

    move-result-object v0

    iget-object v2, v1, Ls2/e;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v8, v3}, Lb0/c;->getNoteTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v11, v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v7, v16

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    move-object/from16 v0, v21

    goto/16 :goto_1

    :cond_3
    move-object/from16 v21, v0

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object/from16 v22, v12

    move-object/from16 v20, v13

    iget-object v0, v1, Ls2/e;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, v1, Ls2/e;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getTagUUID()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getExtraInfo()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getIsDeleted()I

    move-result v13

    invoke-virtual {v12, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v13, v10

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getTagModifiedTime()J

    move-result-wide v10

    invoke-virtual {v12, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v22, v0

    move-object v10, v13

    move-object/from16 v0, v16

    goto :goto_4

    :cond_4
    move-object/from16 v16, v0

    move-object v13, v10

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getTagServerTime()J

    move-result-wide v7

    invoke-virtual {v4, v14, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v22, v0

    move-object v10, v13

    move-object/from16 v0, v16

    goto/16 :goto_3

    :cond_5
    const-string v0, "file_info"

    move-object/from16 v2, v21

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Ls2/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "extra_tag.list"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    const-string v6, "[UELT] failed to delete makeFileInfoJSON"

    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v5, :cond_6

    move-object/from16 v5, v18

    :try_start_5
    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object/from16 v5, v18

    :goto_5
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v7
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v7, :cond_9

    :try_start_6
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "UTF-8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->s()Lg0/b;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Lg0/b;->zip(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    throw v0

    :cond_9
    const-string v0, "[UELT] Failed to create makeFileInfoJSON"

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x138

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v5, v18

    :goto_7
    move-object/from16 v3, v19

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v19, v2

    :goto_8
    move-object v5, v3

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x138

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_7
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ls0/c;

    const/16 v3, 0x130

    invoke-direct {v2, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public e()Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls2/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "extra_tag.list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "SyncOldNote$SyncExtraListTag"

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "[DELT] failed to delete SyncExtraList"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v3, p0, Ls2/e;->b:Lt2/c;

    invoke-virtual {v3, v1}, Lt2/c;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->p()La2/d$e;

    move-result-object v1

    iget-object v3, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    const-string v5, "extra_tag_uuid_version"

    iget-object v6, p0, Ls2/e;->d:Ljava/lang/String;

    invoke-static {v1, v3, v5, v6}, La2/d;->c(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DELT] Fail to download extra tag list : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Ls2/e;->c:Lp2/a;

    invoke-interface {v1}, Lp2/a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "[DELT] Cancelled in Extra tag List"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Ls2/e;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DELT] Handle the extra tag list : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/i;

    invoke-virtual {v1}, Ld1/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v5

    invoke-virtual {v5}, Lx/e;->m()Lb0/b;

    move-result-object v5

    iget-object v6, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lb0/b;->isExistNote(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-virtual {v1}, Ld1/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Ls2/e;->b(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v5

    invoke-virtual {v5}, Lx/e;->k()Lb0/c;

    move-result-object v5

    iget-object v6, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lb0/c;->getNoteTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1}, Ld1/i;->c()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-lez v9, :cond_6

    const-string v5, "[DELT] Update tag in server"

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v5

    invoke-virtual {v5}, Lx/e;->m()Lb0/b;

    move-result-object v5

    iget-object v6, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lb0/b;->isExistNote(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v5

    invoke-virtual {v5}, Lx/e;->k()Lb0/c;

    move-result-object v5

    iget-object v6, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Ld1/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v7

    invoke-virtual {v7}, Lx/e;->m()Lb0/b;

    move-result-object v7

    invoke-interface {v7}, Lb0/b;->getSdocContractNo()I

    move-result v7

    invoke-interface {v5, v6, v3, v1, v7}, Lb0/c;->setNoteTagContentList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update tags in server : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v1, :cond_5

    const-string v1, "Fail to setNoteTagContentList"

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "succeed to set"

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DELT] not updated : localTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , serverTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "[DELT] Finished to Handle the extra tag list"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v0, "[DELT] No downloaded file!"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method public f()Z
    .locals 15

    const-string v0, "extra_tag.list"

    iget-object v1, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->H()Z

    move-result v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->k()Lb0/c;

    move-result-object v3

    iget-object v4, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lb0/c;->getDirtyCountOfNoteTag(Landroid/content/Context;)I

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

    invoke-virtual {v1, v2}, Lt2/b;->U(Z)V

    iget-object v1, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->H()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SyncOldNote$SyncExtraListTag"

    const-string v2, "[UELT] Need to update Server"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ld1/h;

    const-string v3, "extra_tag_uuid_version"

    iget-wide v6, p0, Ls2/e;->e:J

    invoke-direct {v2, v3, v0, v6, v7}, Ld1/h;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2}, Ld1/h;->K()Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->k()Lb0/c;

    move-result-object v2

    iget-object v3, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lb0/c;->getSDocUuidAndNoteTagTimeList(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "[UELT] update list is null"

    if-nez v2, :cond_1

    :try_start_1
    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-virtual {p0, v2}, Ls2/e;->d(Ljava/util/HashMap;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    iget-object v3, p0, Ls2/e;->c:Lp2/a;

    invoke-interface {v3}, Lp2/a;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "[UELT] Cancelled Extra tag List"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ls2/e;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->p()La2/d$e;

    move-result-object v8

    iget-object v0, p0, Ls2/e;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v9

    const-string v11, "extra_tag_uuid_version"

    iget-wide v5, p0, Ls2/e;->e:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ls2/e$a;

    invoke-direct {v14, p0, v2, v10}, Ls2/e$a;-><init>(Ls2/e;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static/range {v8 .. v14}, La2/d;->m(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;La2/d$f;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UELT] success to upload Extra tag List : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ls2/e;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ls0/c; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "[UELT] Finished to update Server"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "[UELT] Failed to upload Extra tag List"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UELT] Failed to to upload Extra tag List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x130

    const-string v2, "Failed to upload tag"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return v4
.end method
