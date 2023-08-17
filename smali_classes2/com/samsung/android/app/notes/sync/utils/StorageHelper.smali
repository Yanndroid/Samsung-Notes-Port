.class public final Lcom/samsung/android/app/notes/sync/utils/StorageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x0

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->a:Ljava/lang/String;

    const-string v1, "rootfs"

    const-string/jumbo v2, "tmpfs"

    const-string v3, "dvpts"

    const-string v4, "proc"

    const-string v5, "sysfs"

    const-string v6, "none"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->b:[Ljava/lang/String;

    const-string v0, "obb"

    const-string v1, "asec"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->c:[Ljava/lang/String;

    const-string/jumbo v1, "tmpfs"

    const-string v2, "rootfs"

    const-string v3, "romfs"

    const-string v4, "devpts"

    const-string v5, "sysfs"

    const-string v6, "proc"

    const-string v7, "cgroup"

    const-string v8, "debugfs"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v8, v1, v7

    move v9, v0

    :goto_0
    if-gt v9, v8, :cond_2

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v9

    move-object v4, p2

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public c(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;)Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->d(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;)Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    move-result-object v3

    if-ne v3, p1, :cond_0

    iget-object v3, v2, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-eqz v3, :cond_0

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;",
            ">;"
        }
    .end annotation

    const-string v0, "getStorages : "

    const-string v1, "StorageHelper"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->a:Ljava/lang/String;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_d

    const/4 v3, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "/proc/mounts"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, " "

    invoke-direct {v7, v3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->b:[Ljava/lang/String;

    invoke-virtual {p0, v8, v3}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->isCurrentUserStorageDevice(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    sget-object v9, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->c:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->e(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->d:[Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_0

    :cond_5
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->canExecute()Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_7

    new-instance v8, Ljava/util/ArrayList;

    const/4 v11, 0x3

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance v11, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;

    invoke-direct {v11, v3, v10, v9}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v9, ","

    invoke-direct {v3, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v9, "rw"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v11, v5}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->d(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Z)V

    goto :goto_1

    :cond_9
    const-string v9, "ro"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v11, v4}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->d(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Z)V

    :cond_a
    :goto_1
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :cond_b
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v6

    move-object v12, v6

    move-object v6, v3

    move-object v3, v12

    :goto_2
    :try_start_3
    const-string v7, "getStorages"

    invoke-static {v1, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_d

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v3, v6

    :goto_4
    if-eqz v3, :cond_c

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    throw p1

    :cond_d
    :goto_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v5

    :cond_e
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v4, :cond_f

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;

    iget-object v7, v6, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    invoke-virtual {v7, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    invoke-virtual {p0, v1, v6, p1, v7}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->g(Ljava/util/List;Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;ZZ)V

    goto :goto_7

    :cond_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v5

    :goto_8
    if-ge v8, v7, :cond_e

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;

    iget-object v10, v9, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    invoke-virtual {v10, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {p0, v1, v9, p1, v4}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->g(Ljava/util/List;Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;ZZ)V

    move v3, v4

    goto :goto_7

    :cond_10
    add-int/lit8 v10, v7, -0x1

    if-ne v8, v10, :cond_11

    invoke-virtual {p0, v1, v9, p1, v5}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->g(Ljava/util/List;Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;ZZ)V

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_12
    if-nez v3, :cond_14

    new-instance p1, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;

    const-string v2, ""

    const-string v3, "UNKNOWN"

    invoke-direct {p1, v2, v0, v3}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->c(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Z)V

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->a(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;->INTERNAL:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    goto :goto_9

    :cond_13
    sget-object v0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;->EXTERNAL:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    :goto_9
    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->f(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;)V

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->e(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Z)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted_ro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->d(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Z)V

    invoke-interface {v1, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_14
    return-object v1
.end method

.method public final e(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final f(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;)Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;->INTERNAL:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "usb"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;->USB:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    return-object p1

    :cond_1
    sget-object p1, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;->EXTERNAL:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    return-object p1
.end method

.method public final g(Ljava/util/List;Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;",
            ">;",
            "Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;",
            "ZZ)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper;->f(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;)Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    move-result-object v0

    if-nez p3, :cond_0

    sget-object p3, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;->USB:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    if-eq v0, p3, :cond_5

    :cond_0
    invoke-static {p2, v0}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->f(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;)V

    iget-object p3, p2, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result p3

    :goto_0
    invoke-static {p2, p3}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->e(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Z)V

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;->INTERNAL:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    if-eq v0, p3, :cond_2

    move p3, v1

    goto :goto_0

    :cond_2
    move p3, v2

    goto :goto_0

    :goto_1
    sget-object p3, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;->INTERNAL:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    if-ne v0, p3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {p2, v1}, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->c(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Z)V

    if-eqz p4, :cond_4

    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    return-void
.end method
