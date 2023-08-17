.class public Lc3/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/util/Date;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:Ljava/io/InputStream;

.field public n:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc3/p$c;->g:I

    iput-boolean v0, p0, Lc3/p$c;->k:Z

    iput-boolean v0, p0, Lc3/p$c;->l:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd_HH-mm-ss-SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lc3/p$c;->n:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lc3/p$c;
    .locals 0

    iput-object p1, p0, Lc3/p$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lc3/p$c;
    .locals 0

    iput-object p1, p0, Lc3/p$c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lc3/p$c;
    .locals 0

    iput-object p1, p0, Lc3/p$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lc3/p$c;
    .locals 0

    iput-object p1, p0, Lc3/p$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/util/Map;)Lc3/p$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc3/p$c;"
        }
    .end annotation

    iput-object p1, p0, Lc3/p$c;->i:Ljava/util/Map;

    return-object p0
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lc3/p;->a()Lc3/p$b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lc3/p$b;

    const-string v1, "SyncLogs"

    invoke-direct {v0, v1}, Lc3/p$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc3/p;->c(Lc3/p$b;)V

    :cond_0
    invoke-static {}, Lc3/p;->a()Lc3/p$b;

    move-result-object v0

    invoke-static {v0}, Lc3/p$b;->a(Lc3/p$b;)V

    iget-boolean v0, p0, Lc3/p$c;->l:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lc3/p;->b()Lc3/p$b;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lc3/p$b;

    const-string v1, "SyncLogError"

    invoke-direct {v0, v1}, Lc3/p$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc3/p;->d(Lc3/p$b;)V

    :cond_1
    invoke-static {}, Lc3/p;->b()Lc3/p$b;

    move-result-object v0

    invoke-static {v0}, Lc3/p$b;->a(Lc3/p$b;)V

    :cond_2
    return-void
.end method

.method public g(Z)Lc3/p$c;
    .locals 0

    iput-boolean p1, p0, Lc3/p$c;->l:Z

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lc3/p$c;
    .locals 0

    iput-object p1, p0, Lc3/p$c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/util/Map;)Lc3/p$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc3/p$c;"
        }
    .end annotation

    iput-object p1, p0, Lc3/p$c;->j:Ljava/util/Map;

    return-object p0
.end method

.method public j(I)Lc3/p$c;
    .locals 0

    iput p1, p0, Lc3/p$c;->g:I

    return-object p0
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Lc3/p$c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v2, "uploadFile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "downloadFile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public l(Ljava/lang/String;)Lc3/p$c;
    .locals 0

    iput-object p1, p0, Lc3/p$c;->f:Ljava/lang/String;

    return-object p0
.end method

.method public m(Landroid/content/Context;)V
    .locals 6

    const-string v0, "SyncLogger"

    :try_start_0
    invoke-static {p1}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lc3/p$c;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Lc3/p$c;->f()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lc3/p$c;->h:Ljava/util/Date;

    iget-object v1, p0, Lc3/p$c;->i:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "json"

    const-string/jumbo v3, "txt"

    const-string/jumbo v4, "xml"

    if-eqz v1, :cond_3

    :try_start_1
    const-string v5, "Content-Type"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lc3/p$c;->i:Ljava/util/Map;

    const-string v5, "content-type"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lc3/p$c;->k:Z

    if-eqz v1, :cond_4

    :goto_0
    move-object v1, v4

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    iget-object v5, p0, Lc3/p$c;->c:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v1, v4

    :cond_5
    iget-object v5, p0, Lc3/p$c;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v1, v3

    :cond_6
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, ""

    if-eqz v4, :cond_7

    :try_start_2
    const-string v5, "<!--"

    const-string v2, "-->"

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v5, "/*"

    const-string v2, "*/"

    goto :goto_2

    :cond_8
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v5

    :goto_2
    new-instance v3, Lc3/p$a;

    const-string v4, "\n"

    invoke-direct {v3, v4}, Lc3/p$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lc3/p$a;->a(Ljava/lang/String;)Lc3/p$a;

    move-result-object v3

    const-string v4, "ApiName"

    iget-object v5, p0, Lc3/p$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lc3/p$a;->b(Ljava/lang/String;Ljava/lang/String;)Lc3/p$a;

    move-result-object v3

    const-string v4, "StatusCode"

    iget v5, p0, Lc3/p$c;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc3/p$a;->b(Ljava/lang/String;Ljava/lang/String;)Lc3/p$a;

    move-result-object v3

    const-string v4, "Method"

    iget-object v5, p0, Lc3/p$c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lc3/p$a;->b(Ljava/lang/String;Ljava/lang/String;)Lc3/p$a;

    move-result-object v3

    iget-object v4, p0, Lc3/p$c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc3/p$a;->a(Ljava/lang/String;)Lc3/p$a;

    move-result-object v3

    const-string v4, "Url"

    iget-object v5, p0, Lc3/p$c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lc3/p$a;->b(Ljava/lang/String;Ljava/lang/String;)Lc3/p$a;

    move-result-object v3

    const-string v4, "params"

    iget-object v5, p0, Lc3/p$c;->j:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Lc3/p$a;->c(Ljava/lang/String;Ljava/util/Map;)Lc3/p$a;

    move-result-object v3

    const-string v4, "headers"

    iget-object v5, p0, Lc3/p$c;->i:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Lc3/p$a;->c(Ljava/lang/String;Ljava/util/Map;)Lc3/p$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc3/p$a;->a(Ljava/lang/String;)Lc3/p$a;

    move-result-object v2

    invoke-virtual {v2}, Lc3/p$a;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lc3/p$a;

    const-string v4, "_"

    invoke-direct {v3, v4}, Lc3/p$a;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lc3/p$c;->n:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lc3/p$c;->h:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc3/p$a;->a(Ljava/lang/String;)Lc3/p$a;

    move-result-object v3

    invoke-static {p1}, Lc3/p;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lc3/p$a;->a(Ljava/lang/String;)Lc3/p$a;

    move-result-object p1

    iget-object v3, p0, Lc3/p$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lc3/p$a;->a(Ljava/lang/String;)Lc3/p$a;

    move-result-object p1

    iget-object v3, p0, Lc3/p$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lc3/p$a;->a(Ljava/lang/String;)Lc3/p$a;

    move-result-object p1

    iget-object v3, p0, Lc3/p$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lc3/p$a;->a(Ljava/lang/String;)Lc3/p$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lc3/p$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lc3/p$c;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lc3/p$c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x1e

    if-ge v3, v1, :cond_9

    iget-object v1, p0, Lc3/p$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc3/p$c;->c:Ljava/lang/String;

    :cond_9
    invoke-static {}, Lc3/p;->a()Lc3/p$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc3/p$b;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lc3/p;->a()Lc3/p$b;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc3/p$b;->h(Ljava/lang/String;)Ljava/io/OutputStreamWriter;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lc3/p$c;->d:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {p1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lc3/p$c;->m:Ljava/io/InputStream;

    if-eqz v2, :cond_b

    const/16 v2, 0x800

    new-array v2, v2, [B

    :goto_3
    iget-object v3, p0, Lc3/p$c;->m:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    goto :goto_3

    :cond_b
    invoke-static {}, Lc3/p;->a()Lc3/p$b;

    move-result-object v2

    invoke-static {v2, v1}, Lc3/p$b;->d(Lc3/p$b;Ljava/io/File;)V

    iget-boolean v2, p0, Lc3/p$c;->l:Z

    if-eqz v2, :cond_d

    invoke-static {}, Lc3/p;->a()Lc3/p$b;

    move-result-object v2

    invoke-static {v2}, Lc3/p$b;->b(Lc3/p$b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {}, Lc3/p;->b()Lc3/p$b;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc3/p$b;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/document/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    invoke-static {}, Lc3/p;->b()Lc3/p$b;

    move-result-object v3

    invoke-static {v3, v4}, Lc3/p$b;->d(Lc3/p$b;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_d
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object p1, p0, Lc3/p$c;->m:Ljava/io/InputStream;

    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_9

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_e

    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_6
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to write log filename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " e="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object p1, p0, Lc3/p$c;->m:Ljava/io/InputStream;

    goto :goto_5

    :goto_7
    iget-object v1, p0, Lc3/p$c;->m:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :cond_f
    :goto_8
    return-void

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void
.end method

.method public n(Ljava/lang/String;)Lc3/p$c;
    .locals 0

    iput-object p1, p0, Lc3/p$c;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc3/p$c;->k:Z

    return-object p0
.end method
