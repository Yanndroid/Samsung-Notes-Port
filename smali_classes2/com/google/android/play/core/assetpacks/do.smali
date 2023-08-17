.class final Lcom/google/android/play/core/assetpacks/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/play/core/internal/af;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/bb;

.field private final c:Lcom/google/android/play/core/internal/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cj<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/play/core/common/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/af;

    const-string v1, "PatchSliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/af;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/do;->a:Lcom/google/android/play/core/internal/af;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/internal/cj;Lcom/google/android/play/core/common/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/bb;",
            "Lcom/google/android/play/core/internal/cj<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;",
            "Lcom/google/android/play/core/common/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/do;->b:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/do;->c:Lcom/google/android/play/core/internal/cj;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/do;->d:Lcom/google/android/play/core/common/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/dn;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/do;->b:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    iget v4, v2, Lcom/google/android/play/core/assetpacks/dn;->a:I

    iget-wide v5, v2, Lcom/google/android/play/core/assetpacks/dn;->b:J

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/bb;->a(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/do;->b:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    iget v5, v2, Lcom/google/android/play/core/assetpacks/dn;->a:I

    iget-wide v6, v2, Lcom/google/android/play/core/assetpacks/dn;->b:J

    iget-object v8, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    new-instance v9, Ljava/io/File;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/bb;->b(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v3

    invoke-direct {v9, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v2, Lcom/google/android/play/core/assetpacks/dn;->h:Ljava/io/InputStream;

    iget v7, v2, Lcom/google/android/play/core/assetpacks/dn;->e:I

    if-eq v7, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    const/16 v8, 0x2000

    invoke-direct {v7, v6, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v7

    :goto_0
    :try_start_1
    new-instance v7, Lcom/google/android/play/core/assetpacks/be;

    invoke-direct {v7, v0, v9}, Lcom/google/android/play/core/assetpacks/be;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/do;->d:Lcom/google/android/play/core/common/a;

    invoke-virtual {v0}, Lcom/google/android/play/core/common/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/do;->b:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v9, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    iget v10, v2, Lcom/google/android/play/core/assetpacks/dn;->c:I

    iget-wide v11, v2, Lcom/google/android/play/core/assetpacks/dn;->d:J

    iget-object v13, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/assetpacks/bb;->a(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v8, Lcom/google/android/play/core/assetpacks/dr;

    iget-object v10, v1, Lcom/google/android/play/core/assetpacks/do;->b:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v11, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    iget v12, v2, Lcom/google/android/play/core/assetpacks/dn;->c:I

    iget-wide v13, v2, Lcom/google/android/play/core/assetpacks/dn;->d:J

    iget-object v15, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    move-object v9, v8

    invoke-direct/range {v9 .. v15}, Lcom/google/android/play/core/assetpacks/dr;-><init>(Lcom/google/android/play/core/assetpacks/bb;Ljava/lang/String;IJLjava/lang/String;)V

    new-instance v9, Lcom/google/android/play/core/assetpacks/by;

    invoke-direct {v9, v0, v8}, Lcom/google/android/play/core/assetpacks/by;-><init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/dr;)V

    iget-wide v10, v2, Lcom/google/android/play/core/assetpacks/dn;->g:J

    invoke-static {v7, v6, v9, v10, v11}, Lcom/google/android/play/core/internal/bq;->a(Lcom/google/android/play/core/internal/ca;Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    invoke-virtual {v8, v5}, Lcom/google/android/play/core/assetpacks/dr;->b(I)V

    goto :goto_1

    :cond_2
    iget-object v12, v1, Lcom/google/android/play/core/assetpacks/do;->b:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v13, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    iget v14, v2, Lcom/google/android/play/core/assetpacks/dn;->c:I

    iget-wide v8, v2, Lcom/google/android/play/core/assetpacks/dn;->d:J

    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    new-instance v10, Ljava/io/File;

    move-wide v15, v8

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/play/core/assetpacks/bb;->f(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v8, "slice.zip.tmp"

    invoke-direct {v10, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-wide v8, v2, Lcom/google/android/play/core/assetpacks/dn;->g:J

    invoke-static {v7, v6, v0, v8, v9}, Lcom/google/android/play/core/internal/bq;->a(Lcom/google/android/play/core/internal/ca;Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    iget-object v11, v1, Lcom/google/android/play/core/assetpacks/do;->b:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v12, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    iget v13, v2, Lcom/google/android/play/core/assetpacks/dn;->c:I

    iget-wide v14, v2, Lcom/google/android/play/core/assetpacks/dn;->d:J

    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/play/core/assetpacks/bb;->e(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/do;->d:Lcom/google/android/play/core/common/a;

    invoke-virtual {v0}, Lcom/google/android/play/core/common/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/play/core/assetpacks/do;->a:Lcom/google/android/play/core/internal/af;

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    aput-object v7, v6, v4

    const-string v7, "Patching and extraction finished for slice %s of pack %s."

    invoke-virtual {v0, v7, v6}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/google/android/play/core/assetpacks/do;->a:Lcom/google/android/play/core/internal/af;

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    aput-object v7, v6, v4

    const-string v7, "Patching finished for slice %s of pack %s."

    invoke-virtual {v0, v7, v6}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/do;->c:Lcom/google/android/play/core/internal/cj;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/cj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/w;

    iget v6, v2, Lcom/google/android/play/core/assetpacks/cr;->j:I

    iget-object v7, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    invoke-interface {v0, v6, v7, v8, v5}, Lcom/google/android/play/core/assetpacks/w;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_3
    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/dn;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    sget-object v0, Lcom/google/android/play/core/assetpacks/do;->a:Lcom/google/android/play/core/internal/af;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    aput-object v6, v3, v5

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    aput-object v2, v3, v4

    const-string v2, "Could not close file for slice %s of pack %s."

    invoke-virtual {v0, v2, v3}, Lcom/google/android/play/core/internal/af;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    :try_start_4
    new-instance v0, Lcom/google/android/play/core/assetpacks/bv;

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    aput-object v8, v7, v5

    iget-object v8, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    aput-object v8, v7, v4

    const-string v8, "Error moving patch for slice %s of pack %s."

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/google/android/play/core/assetpacks/cr;->j:I

    invoke-direct {v0, v7, v8}, Lcom/google/android/play/core/assetpacks/bv;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v7, v0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_6
    invoke-static {v7, v6}, Lcom/google/android/play/core/internal/ci;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    sget-object v6, Lcom/google/android/play/core/assetpacks/do;->a:Lcom/google/android/play/core/internal/af;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "IOException during patching %s."

    invoke-virtual {v6, v8, v7}, Lcom/google/android/play/core/internal/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Lcom/google/android/play/core/assetpacks/bv;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/google/android/play/core/assetpacks/dn;->f:Ljava/lang/String;

    aput-object v7, v3, v5

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/cr;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "Error patching slice %s of pack %s."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v2, v2, Lcom/google/android/play/core/assetpacks/cr;->j:I

    invoke-direct {v6, v3, v0, v2}, Lcom/google/android/play/core/assetpacks/bv;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v6
.end method
