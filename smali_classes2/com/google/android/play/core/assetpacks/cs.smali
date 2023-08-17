.class final Lcom/google/android/play/core/assetpacks/cs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/play/core/internal/af;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/cp;

.field private final c:Lcom/google/android/play/core/assetpacks/bb;

.field private final d:Lcom/google/android/play/core/assetpacks/bk;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/af;

    const-string v1, "ExtractorTaskFinder"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/af;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/cs;->a:Lcom/google/android/play/core/internal/af;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/cp;Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/assetpacks/bk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cs;->b:Lcom/google/android/play/core/assetpacks/cp;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/cs;->d:Lcom/google/android/play/core/assetpacks/bk;

    return-void
.end method

.method private final a(Lcom/google/android/play/core/assetpacks/cm;Lcom/google/android/play/core/assetpacks/cn;)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v3, v1, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget-object v5, p2, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    move-object v1, v2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/bb;->e(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private static a(Lcom/google/android/play/core/assetpacks/cn;)Z
    .locals 2

    iget p0, p0, Lcom/google/android/play/core/assetpacks/cn;->f:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/assetpacks/cr;
    .locals 34
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/cs;->b:Lcom/google/android/play/core/assetpacks/cp;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/cp;->a()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/cs;->b:Lcom/google/android/play/core/assetpacks/cp;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/cp;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/assetpacks/cm;

    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/cl;->c:I

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/db;->c(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/cm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v10, v9, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v11, v4, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v12, v9, Lcom/google/android/play/core/assetpacks/cl;->b:J

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/google/android/play/core/assetpacks/bb;->d(Ljava/lang/String;IJ)I

    move-result v8

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/cl;->e:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v8, v9, :cond_2

    :try_start_2
    sget-object v0, Lcom/google/android/play/core/assetpacks/cs;->a:Lcom/google/android/play/core/internal/af;

    new-array v8, v5, [Ljava/lang/Object;

    iget v9, v4, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    aput-object v9, v8, v6

    const-string v9, "Found final move task for session %s with pack %s."

    invoke-virtual {v0, v9, v8}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/assetpacks/dh;

    iget v11, v4, Lcom/google/android/play/core/assetpacks/cm;->a:I

    iget-object v8, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v12, v8, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v13, v4, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v14, v8, Lcom/google/android/play/core/assetpacks/cl;->b:J

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/google/android/play/core/assetpacks/dh;-><init>(ILjava/lang/String;IJ)V

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/play/core/assetpacks/bv;

    new-array v3, v5, [Ljava/lang/Object;

    iget v5, v4, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    aput-object v5, v3, v6

    const-string v5, "Failed to check number of completed merges for session %s, pack %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v4, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/play/core/assetpacks/bv;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_12

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v8, 0x3

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/cm;

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget v9, v9, Lcom/google/android/play/core/assetpacks/cl;->c:I

    invoke-static {v9}, Lcom/google/android/play/core/assetpacks/db;->c(I)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/cl;->e:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/play/core/assetpacks/cn;

    iget-object v11, v1, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v12, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v13, v12, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v14, v4, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v5, v12, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget-object v15, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    move-object v12, v13

    move v13, v14

    move-object/from16 v16, v15

    move-wide v14, v5

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/play/core/assetpacks/bb;->b(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v0, Lcom/google/android/play/core/assetpacks/cs;->a:Lcom/google/android/play/core/internal/af;

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v4, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v6, v5, v9

    iget-object v6, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "Found merge task for session %s with pack %s and slice %s."

    invoke-virtual {v0, v6, v5}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/assetpacks/de;

    iget v5, v4, Lcom/google/android/play/core/assetpacks/cm;->a:I

    iget-object v6, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v9, v6, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v11, v6, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget-object v6, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v20, v5

    move-object/from16 v21, v9

    move/from16 v22, v4

    move-wide/from16 v23, v11

    move-object/from16 v25, v6

    invoke-direct/range {v19 .. v25}, Lcom/google/android/play/core/assetpacks/de;-><init>(ILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_12

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/cm;

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget v5, v5, Lcom/google/android/play/core/assetpacks/cl;->c:I

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/db;->c(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/cl;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/assetpacks/cn;

    new-instance v16, Lcom/google/android/play/core/assetpacks/dr;

    iget-object v10, v1, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v11, v9, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v12, v4, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v13, v9, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget-object v15, v6, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/google/android/play/core/assetpacks/dr;-><init>(Lcom/google/android/play/core/assetpacks/bb;Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/play/core/assetpacks/dr;->d()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v10, v1, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v11, v9, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v12, v4, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v13, v9, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget-object v15, v6, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/play/core/assetpacks/bb;->a(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v0, Lcom/google/android/play/core/assetpacks/cs;->a:Lcom/google/android/play/core/internal/af;

    new-array v5, v8, [Ljava/lang/Object;

    iget v9, v4, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v5, v10

    iget-object v9, v6, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v5, v10

    const-string v9, "Found verify task for session %s with pack %s and slice %s."

    invoke-virtual {v0, v9, v5}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/assetpacks/du;

    iget v5, v4, Lcom/google/android/play/core/assetpacks/cm;->a:I

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v10, v9, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v11, v9, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget-object v9, v6, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/cn;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v20, v5

    move-object/from16 v21, v10

    move/from16 v22, v4

    move-wide/from16 v23, v11

    move-object/from16 v25, v9

    move-object/from16 v26, v6

    invoke-direct/range {v19 .. v26}, Lcom/google/android/play/core/assetpacks/du;-><init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_12

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x4

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/play/core/assetpacks/cm;

    iget-object v0, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget v0, v0, Lcom/google/android/play/core/assetpacks/cl;->c:I

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/db;->c(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/cl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/play/core/assetpacks/cn;

    invoke-static {v10}, Lcom/google/android/play/core/assetpacks/cs;->a(Lcom/google/android/play/core/assetpacks/cn;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {v1, v6, v10}, Lcom/google/android/play/core/assetpacks/cs;->a(Lcom/google/android/play/core/assetpacks/cm;Lcom/google/android/play/core/assetpacks/cn;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/play/core/assetpacks/cs;->a:Lcom/google/android/play/core/internal/af;

    new-array v4, v8, [Ljava/lang/Object;

    iget v9, v6, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    iget-object v9, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v9, v4, v11

    iget-object v9, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v9, v4, v11

    const-string v9, "Found extraction task for patch for session %s, pack %s, slice %s."

    invoke-virtual {v0, v9, v4}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v11, v1, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v4, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v12, v4, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v13, v6, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v14, v4, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget-object v4, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/play/core/assetpacks/bb;->e(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v4, Lcom/google/android/play/core/assetpacks/bs;

    iget v9, v6, Lcom/google/android/play/core/assetpacks/cm;->a:I

    iget-object v11, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v12, v11, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v6, v6, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v13, v11, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget-object v10, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    iget-wide v7, v11, Lcom/google/android/play/core/assetpacks/cl;->d:J

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    iget v11, v11, Lcom/google/android/play/core/assetpacks/cl;->c:I

    move-object/from16 v19, v4

    move/from16 v20, v9

    move-object/from16 v21, v12

    move/from16 v22, v6

    move-wide/from16 v23, v13

    move-object/from16 v25, v10

    move-wide/from16 v29, v7

    move/from16 v31, v11

    move-object/from16 v32, v0

    invoke-direct/range {v19 .. v32}, Lcom/google/android/play/core/assetpacks/bs;-><init>(ILjava/lang/String;IJLjava/lang/String;IIIJILjava/io/InputStream;)V

    goto/16 :goto_7

    :catch_1
    move-exception v0

    new-instance v2, Lcom/google/android/play/core/assetpacks/bv;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v6, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v4, v4, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "Error finding patch, session %s packName %s sliceId %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v6, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/play/core/assetpacks/bv;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_c
    new-instance v0, Lcom/google/android/play/core/assetpacks/dr;

    iget-object v7, v1, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v8, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v11, v8, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v12, v6, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v13, v8, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget-object v8, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    move-object/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v23, v13

    move-object/from16 v25, v8

    invoke-direct/range {v19 .. v25}, Lcom/google/android/play/core/assetpacks/dr;-><init>(Lcom/google/android/play/core/assetpacks/bb;Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/dr;->c()I

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v7, v0

    :try_start_6
    sget-object v0, Lcom/google/android/play/core/assetpacks/cs;->a:Lcom/google/android/play/core/internal/af;

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v11, v8

    const-string v7, "Slice checkpoint corrupt, restarting extraction. %s"

    invoke-virtual {v0, v7, v11}, Lcom/google/android/play/core/internal/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_6
    const/4 v7, -0x1

    if-eq v0, v7, :cond_d

    iget-object v7, v10, Lcom/google/android/play/core/assetpacks/cn;->d:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/play/core/assetpacks/ck;

    iget-boolean v7, v7, Lcom/google/android/play/core/assetpacks/ck;->a:Z

    if-eqz v7, :cond_d

    sget-object v4, Lcom/google/android/play/core/assetpacks/cs;->a:Lcom/google/android/play/core/internal/af;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v10, Lcom/google/android/play/core/assetpacks/cn;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget v8, v6, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    iget-object v8, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v8, v8, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    iget-object v8, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "Found extraction task using compression format %s for session %s, pack %s, slice %s, chunk %s."

    invoke-virtual {v4, v8, v7}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/cs;->d:Lcom/google/android/play/core/assetpacks/bk;

    iget v7, v6, Lcom/google/android/play/core/assetpacks/cm;->a:I

    iget-object v8, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v8, v8, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget-object v9, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    invoke-virtual {v4, v7, v8, v9, v0}, Lcom/google/android/play/core/assetpacks/bk;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v32

    new-instance v4, Lcom/google/android/play/core/assetpacks/bs;

    iget v7, v6, Lcom/google/android/play/core/assetpacks/cm;->a:I

    iget-object v8, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v9, v8, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget v11, v6, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-wide v12, v8, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget-object v8, v10, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    iget v14, v10, Lcom/google/android/play/core/assetpacks/cn;->e:I

    iget-object v10, v10, Lcom/google/android/play/core/assetpacks/cn;->d:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v28

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    move-object/from16 v33, v4

    iget-wide v3, v6, Lcom/google/android/play/core/assetpacks/cl;->d:J

    iget v6, v6, Lcom/google/android/play/core/assetpacks/cl;->c:I

    move-object/from16 v19, v33

    move/from16 v20, v7

    move-object/from16 v21, v9

    move/from16 v22, v11

    move-wide/from16 v23, v12

    move-object/from16 v25, v8

    move/from16 v26, v14

    move/from16 v27, v0

    move-wide/from16 v29, v3

    move/from16 v31, v6

    invoke-direct/range {v19 .. v32}, Lcom/google/android/play/core/assetpacks/bs;-><init>(ILjava/lang/String;IJLjava/lang/String;IIIJILjava/io/InputStream;)V

    move-object/from16 v4, v33

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    const/4 v8, 0x3

    goto/16 :goto_5

    :cond_e
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_14

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/cm;

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget v3, v3, Lcom/google/android/play/core/assetpacks/cl;->c:I

    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/db;->c(I)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/cl;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/cn;

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/cs;->a(Lcom/google/android/play/core/assetpacks/cn;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v4, Lcom/google/android/play/core/assetpacks/cn;->d:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/assetpacks/ck;

    iget-boolean v6, v6, Lcom/google/android/play/core/assetpacks/ck;->a:Z

    if-eqz v6, :cond_10

    invoke-direct {v1, v2, v4}, Lcom/google/android/play/core/assetpacks/cs;->a(Lcom/google/android/play/core/assetpacks/cm;Lcom/google/android/play/core/assetpacks/cn;)Z

    move-result v6

    if-nez v6, :cond_10

    sget-object v0, Lcom/google/android/play/core/assetpacks/cs;->a:Lcom/google/android/play/core/internal/af;

    new-array v3, v5, [Ljava/lang/Object;

    iget v5, v4, Lcom/google/android/play/core/assetpacks/cn;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    iget v5, v2, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v3, v7

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v5, v3, v8

    const-string v5, "Found patch slice task using patch format %s for session %s, pack %s, slice %s."

    invoke-virtual {v0, v5, v3}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/cs;->d:Lcom/google/android/play/core/assetpacks/bk;

    iget v3, v2, Lcom/google/android/play/core/assetpacks/cm;->a:I

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v5, v6, v9}, Lcom/google/android/play/core/assetpacks/bk;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v24

    new-instance v0, Lcom/google/android/play/core/assetpacks/dn;

    iget v12, v2, Lcom/google/android/play/core/assetpacks/cm;->a:I

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v13, v3, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/assetpacks/bb;

    invoke-virtual {v3, v13}, Lcom/google/android/play/core/assetpacks/bb;->e(Ljava/lang/String;)I

    move-result v14

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/cs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/cl;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/play/core/assetpacks/bb;->f(Ljava/lang/String;)J

    move-result-wide v15

    iget v3, v2, Lcom/google/android/play/core/assetpacks/cm;->b:I

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/cl;

    iget-wide v5, v2, Lcom/google/android/play/core/assetpacks/cl;->b:J

    iget v2, v4, Lcom/google/android/play/core/assetpacks/cn;->f:I

    iget-object v7, v4, Lcom/google/android/play/core/assetpacks/cn;->a:Ljava/lang/String;

    iget-wide v8, v4, Lcom/google/android/play/core/assetpacks/cn;->c:J

    move-object v11, v0

    move/from16 v17, v3

    move-wide/from16 v18, v5

    move/from16 v20, v2

    move-object/from16 v21, v7

    move-wide/from16 v22, v8

    invoke-direct/range {v11 .. v24}, Lcom/google/android/play/core/assetpacks/dn;-><init>(ILjava/lang/String;IJIJILjava/lang/String;JLjava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_13

    :cond_12
    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/cs;->b:Lcom/google/android/play/core/assetpacks/cp;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/cp;->b()V

    return-object v0

    :cond_13
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/cs;->b:Lcom/google/android/play/core/assetpacks/cp;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/cp;->b()V

    const/4 v2, 0x0

    return-object v2

    :cond_14
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/cs;->b:Lcom/google/android/play/core/assetpacks/cp;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/cp;->b()V

    return-object v4

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/cs;->b:Lcom/google/android/play/core/assetpacks/cp;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/cp;->b()V

    throw v0
.end method
