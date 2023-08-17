.class public final Lcom/google/android/play/core/assetpacks/db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/play/core/assetpacks/a;


# direct methods
.method public static a([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetLocation;
    .locals 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Attempted to get file location from a null apk path."

    invoke-static {v4, v5}, Lcom/google/android/play/core/internal/av;->a(ZLjava/lang/Object;)V

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const-string v6, "Attempted to get file location in apk %s with a null file path."

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/play/core/internal/av;->a(ZLjava/lang/Object;)V

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x16

    new-array v6, v5, [B

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, -0x16

    add-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v6, v3}, Lcom/google/android/play/core/assetpacks/db;->a([BI)I

    move-result v7

    const v8, 0x504b0506

    if-ne v7, v8, :cond_2

    invoke-static {v6}, Lcom/google/android/play/core/assetpacks/db;->a([B)Lcom/google/android/play/core/assetpacks/bj;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x5

    const/4 v13, 0x2

    const/4 v14, 0x6

    if-eqz v6, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v15

    add-long/2addr v15, v9

    const-wide/32 v9, -0x10000

    add-long/2addr v9, v15

    const-wide/16 v17, 0x0

    cmp-long v6, v9, v17

    if-gez v6, :cond_4

    move-wide/from16 v9, v17

    :cond_4
    const-wide/16 v11, 0x400

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v2, [B

    new-array v5, v5, [B

    :goto_3
    int-to-long v11, v2

    sub-long/2addr v15, v11

    const-wide/16 v11, 0x3

    add-long/2addr v11, v15

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    add-int/lit8 v15, v2, -0x4

    :goto_4
    if-ltz v15, :cond_e

    aget-byte v6, v3, v15

    if-eq v6, v7, :cond_8

    if-eq v6, v14, :cond_7

    const/16 v7, 0x4b

    if-eq v6, v7, :cond_6

    const/16 v7, 0x50

    if-eq v6, v7, :cond_5

    const/4 v6, -0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x3

    goto :goto_5

    :cond_8
    move v6, v13

    :goto_5
    if-ltz v6, :cond_d

    if-lt v15, v6, :cond_d

    sub-int v7, v15, v6

    invoke-static {v3, v7}, Lcom/google/android/play/core/assetpacks/db;->a([BI)I

    move-result v7

    if-ne v7, v8, :cond_d

    int-to-long v2, v15

    add-long/2addr v11, v2

    int-to-long v2, v6

    sub-long/2addr v11, v2

    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/db;->a([B)Lcom/google/android/play/core/assetpacks/bj;

    move-result-object v6

    :goto_6
    iget-wide v2, v6, Lcom/google/android/play/core/assetpacks/bj;->a:J

    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v7, 0x2e

    new-array v7, v7, [B

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    new-array v8, v8, [B

    const/4 v9, 0x0

    :goto_7
    iget v10, v6, Lcom/google/android/play/core/assetpacks/bj;->b:I

    if-ge v9, v10, :cond_b

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/google/android/play/core/assetpacks/db;->a([BI)I

    move-result v12

    const v10, 0x504b0102

    if-ne v12, v10, :cond_a

    const-wide/16 v19, 0x1c

    add-long v11, v2, v19

    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v10, 0x1c

    invoke-static {v7, v10}, Lcom/google/android/play/core/assetpacks/db;->c([BI)I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_9

    const-wide/16 v11, 0x2e

    add-long/2addr v11, v2

    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v8}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v8, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v1, 0x2a

    invoke-static {v7, v1}, Lcom/google/android/play/core/assetpacks/db;->b([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_8

    :cond_9
    add-int/lit8 v10, v10, 0x2e

    const/16 v11, 0x1e

    invoke-static {v7, v11}, Lcom/google/android/play/core/assetpacks/db;->c([BI)I

    move-result v11

    add-int/2addr v10, v11

    const/16 v11, 0x20

    invoke-static {v7, v11}, Lcom/google/android/play/core/assetpacks/db;->c([BI)I

    move-result v11

    add-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_a
    new-instance v2, Ljava/util/zip/ZipException;

    new-array v3, v14, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v13

    iget v0, v6, Lcom/google/android/play/core/assetpacks/bj;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x3

    aput-object v0, v3, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v3, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x5

    aput-object v0, v3, v7

    const-string v0, "Missing central directory file header signature when looking for file %s in APK %s. Read %d entries out of %d. Found %d instead of the header signature %d."

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_c

    const/16 v16, 0x0

    return-object v16

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x8

    new-array v3, v3, [B

    const-wide/16 v5, 0x16

    add-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/db;->b([BI)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    add-long/2addr v1, v6

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/google/android/play/core/assetpacks/db;->c([BI)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v1, v6

    invoke-static {v3, v14}, Lcom/google/android/play/core/assetpacks/db;->c([BI)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v1, v6

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/play/core/assetpacks/AssetLocation;->a(Ljava/lang/String;JJ)Lcom/google/android/play/core/assetpacks/AssetLocation;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v6, 0x3

    const/4 v7, 0x5

    const/16 v16, 0x0

    add-int/lit8 v15, v15, -0x4

    goto/16 :goto_4

    :cond_e
    const/4 v6, 0x3

    const/16 v16, 0x0

    cmp-long v15, v11, v9

    if-eqz v15, :cond_f

    move-wide v15, v11

    goto/16 :goto_3

    :cond_f
    new-instance v1, Ljava/util/zip/ZipException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "End Of Central Directory signature not found in APK %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/a;
    .locals 3

    const-class v0, Lcom/google/android/play/core/assetpacks/db;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/play/core/assetpacks/db;->a:Lcom/google/android/play/core/assetpacks/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/assetpacks/bq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/assetpacks/bq;-><init>([B)V

    new-instance v2, Lcom/google/android/play/core/assetpacks/n;

    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/p;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/assetpacks/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/bq;->a(Lcom/google/android/play/core/assetpacks/n;)V

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/bq;->a()Lcom/google/android/play/core/assetpacks/a;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/assetpacks/db;->a:Lcom/google/android/play/core/assetpacks/a;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/assetpacks/db;->a:Lcom/google/android/play/core/assetpacks/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a([B)Lcom/google/android/play/core/assetpacks/bj;
    .locals 3

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/android/play/core/assetpacks/db;->c([BI)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/google/android/play/core/assetpacks/db;->b([BI)J

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/google/android/play/core/assetpacks/db;->b([BI)J

    move-result-wide v1

    new-instance p0, Lcom/google/android/play/core/assetpacks/bj;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/play/core/assetpacks/bj;-><init>(JI)V

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, 0x2000

    new-array v1, v1, [B

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :cond_0
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {p0, v0}, Lcom/google/android/play/core/internal/ci;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Z
    .locals 2
    .param p0    # I
        .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackStatus;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static a(II)Z
    .locals 4
    .param p0    # I
        .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackStatus;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackStatus;
        .end annotation
    .end param

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v2, 0x6

    if-ne p0, v2, :cond_3

    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    const/4 v0, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne p0, v0, :cond_7

    if-eq p1, v3, :cond_6

    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    if-eq p1, v1, :cond_6

    if-eq p1, v2, :cond_6

    goto :goto_3

    :cond_6
    return v1

    :cond_7
    :goto_3
    if-ne p0, v3, :cond_9

    if-eq p1, v1, :cond_8

    if-ne p1, v2, :cond_9

    :cond_8
    return v1

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static b([BI)J
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/play/core/assetpacks/db;->c([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/google/android/play/core/assetpacks/db;->c([BI)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static b(I)Z
    .locals 1
    .param p0    # I
        .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackStatus;
        .end annotation
    .end param

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static c(I)Z
    .locals 1
    .param p0    # I
        .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackStatus;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
