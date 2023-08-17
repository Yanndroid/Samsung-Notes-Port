.class public final Lb2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lb2/a;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lb2/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NT$Streams"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Ljava/io/InputStream;)V
    .locals 0

    check-cast p0, Lb2/a;

    invoke-static {p0}, Lb2/d;->a(Lb2/a;)V

    return-void
.end method

.method public static c(Ljava/io/OutputStream;)V
    .locals 0

    check-cast p0, Lb2/a;

    invoke-static {p0}, Lb2/d;->a(Lb2/a;)V

    return-void
.end method

.method public static d(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .locals 1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-static {p0, p1, p2, v0}, Lb2/d;->e(Ljava/io/InputStream;Ljava/io/OutputStream;Z[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Ljava/io/InputStream;Ljava/io/OutputStream;Z[B)J
    .locals 5

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, p3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :goto_1
    move-object p1, p3

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p3}, Lb2/d;->b(Ljava/io/InputStream;)V

    if-eqz p2, :cond_3

    invoke-static {p1}, Lb2/d;->c(Ljava/io/OutputStream;)V

    :cond_3
    return-wide v0

    :cond_4
    if-lez v2, :cond_0

    int-to-long v3, v2

    add-long/2addr v0, v3

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1, p3, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    invoke-static {p0}, Lb2/d;->b(Ljava/io/InputStream;)V

    if-eqz p2, :cond_5

    invoke-static {p1}, Lb2/d;->c(Ljava/io/OutputStream;)V

    :cond_5
    throw p3
.end method
