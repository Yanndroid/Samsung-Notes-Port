.class public Lcom/samsung/android/app/notes/sync/network/networkutils/n;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/OutputStream;

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->c:J

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->d:J

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->a:Ljava/io/OutputStream;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->b:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->c:J

    cmp-long v0, v2, v0

    const-wide/32 v4, 0x10000

    if-gez v0, :cond_0

    div-long/2addr v2, v4

    long-to-int v0, v2

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload transferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadOutputStream"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->c:J

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->d:J

    :cond_2
    return-void
.end method

.method public write(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->c:J

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->a()V

    return-void
.end method

.method public write([B)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->c:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->c:J

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->a()V

    return-void
.end method

.method public write([BII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->c:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->c:J

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/n;->a()V

    return-void
.end method
