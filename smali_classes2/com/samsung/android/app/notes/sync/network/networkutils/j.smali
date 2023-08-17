.class public Lcom/samsung/android/app/notes/sync/network/networkutils/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;,
        Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;,
        Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;,
        Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/io/InputStream;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Landroid/content/Context;

.field public i:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

.field public j:Ljava/lang/String;

.field public k:Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/notes/sync/network/networkutils/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->e:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->c:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->h:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->f:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->j:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->k:Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/app/notes/sync/network/networkutils/j;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->a:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->i:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->g:Ljava/lang/String;

    return-void
.end method

.method public static m(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SyncHttpResponse"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public A()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->o()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->z()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->B()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final B()V
    .locals 12

    const-string v0, "downSyncedStrokeResources"

    const-string v1, "SyncHttpResponse"

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->h:Landroid/content/Context;

    invoke-static {v2}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downSyncedStrokeResources\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    :try_start_0
    const-string v4, "Content-Type"

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;

    move-result-object v4

    const-string v5, "boundary"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    new-instance v5, Lb2/c;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    invoke-direct {v5, v6, v4}, Lb2/c;-><init>(Ljava/io/InputStream;[B)V

    invoke-virtual {v5}, Lb2/c;->s()Z

    move-result v4

    const/4 v6, 0x1

    move v7, v6

    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->l()V

    new-instance v4, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;

    invoke-direct {v4, v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;-><init>(Lcom/samsung/android/app/notes/sync/network/networkutils/k;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;->b(Lb2/c;)V

    iget-object v8, v4, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;->e:Ljava/lang/String;

    const-string v9, "application/octet-stream"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->k:Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;

    iget-object v9, v4, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;->b:Ljava/lang/String;

    iget-object v10, v4, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;->a:Ljava/lang/String;

    iget-object v11, v4, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;->c:[B

    invoke-interface {v8, v9, v10, v11}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;->handleBinaryBody(Ljava/lang/String;Ljava/lang/String;[B)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    rem-int/lit16 v4, v7, 0x3e8

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download stroke "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->h:Landroid/content/Context;

    invoke-static {v8}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lc3/p$c;->a(Ljava/lang/String;)Lc3/p$c;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->a:I

    invoke-virtual {v8, v9}, Lc3/p$c;->j(I)Lc3/p$c;

    move-result-object v8

    const-string v9, "res"

    invoke-virtual {v8, v9}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lc3/p$c;->n(Ljava/lang/String;)Lc3/p$c;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lc3/p$c;->l(Ljava/lang/String;)Lc3/p$c;

    move-result-object v8

    const-string/jumbo v9, "xmlpart"

    invoke-virtual {v8, v9}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->h:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lc3/p$c;->m(Landroid/content/Context;)V

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->k:Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;

    iget-object v9, v4, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/samsung/android/app/notes/sync/network/networkutils/j$d;->d:Ljava/lang/String;

    invoke-interface {v8, v9, v4}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;->handleStringBody(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v5}, Lb2/c;->p()Z

    move-result v4

    goto/16 :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download total stroke "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    if-eqz v4, :cond_6

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc3/p$c;->m(Landroid/content/Context;)V

    :cond_7
    return-void

    :cond_8
    :try_start_2
    new-instance v4, Ls0/c;

    const/16 v5, 0x13b

    const-string v6, "No boundary!"

    invoke-direct {v4, v5, v6}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_1
    move-exception v4

    :try_start_3
    new-instance v5, Ls0/c;

    const/16 v6, 0x138

    invoke-direct {v5, v6, v4}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    if-eqz v5, :cond_9

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc3/p$c;->m(Landroid/content/Context;)V

    :cond_a
    throw v4
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->i:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/c;->a()V

    :cond_0
    return-void
.end method

.method public final n([B)Ljava/lang/String;
    .locals 8

    const-string v0, "decompress() : "

    const-string v1, "SyncHttpResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_7

    array-length v3, p1

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->w([B)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v4, v3

    goto :goto_5

    :catch_4
    move-exception p1

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_2

    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    if-eqz v4, :cond_6

    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object v3, p1

    :goto_5
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    :try_start_9
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_7
    throw v2

    :cond_5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_9
    const-string p1, ""

    return-object p1
.end method

.method public final o()V
    .locals 3

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->v(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    const/16 v1, 0x138

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->m(Ljava/io/InputStream;)V

    new-instance v2, Ls0/c;

    invoke-direct {v2, v1, v0}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->n([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->m(Ljava/io/InputStream;)V

    new-instance v2, Ls0/c;

    invoke-direct {v2, v1, v0}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->makeDirectory(Ljava/lang/String;)Z

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [B

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->l()V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->m(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v1, Ls0/c;

    const/16 v2, 0x138

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ls0/c;

    const/16 v2, 0x141

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->m(Ljava/io/InputStream;)V

    throw v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public s()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    return-object v0
.end method

.method public t()J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    const-string v1, "Retry-After"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncHttpResponse[statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apiName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->a:I

    return v0
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final w([B)Z
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_0

    aget-byte p1, p1, v2

    const/16 v1, -0x75

    if-ne p1, v1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public final x()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->a:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12c

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "multipart/form-data"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final z()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->h:Landroid/content/Context;

    invoke-static {v0}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc3/p$c;->a(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc3/p$c;->l(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->a:I

    invoke-virtual {v0, v1}, Lc3/p$c;->j(I)Lc3/p$c;

    move-result-object v0

    const-string v1, "res"

    invoke-virtual {v0, v1}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc3/p$c;->h(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lc3/p$c;->e(Ljava/util/Map;)Lc3/p$c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lc3/p$c;->g(Z)Lc3/p$c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "error"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc3/p$c;->m(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->x()Z

    move-result v0

    const-string v1, "SyncHttpResponse"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorResponse : body = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->e:Ljava/lang/String;

    const-string v2, "compareForDownsync"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response : body = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
