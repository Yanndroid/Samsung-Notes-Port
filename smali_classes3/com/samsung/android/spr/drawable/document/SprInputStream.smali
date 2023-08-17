.class public Lcom/samsung/android/spr/drawable/document/SprInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private in:Ljava/io/DataInputStream;

.field public mAnimationObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public mMajorVersion:S

.field private mMark:J

.field public mMinorVersion:S

.field private mPosition:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    iput-wide v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMark:J

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->mark(I)V

    iget-wide v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    iput-wide v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read()I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    iget-wide p2, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    :cond_0
    return p1
.end method

.method public readByte()B
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    return v0
.end method

.method public readFloat()F
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    return v0
.end method

.method public readInt()I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    return v0
.end method

.method public readShort()S
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    iget-wide v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMark:J

    iput-wide v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mPosition:J

    :cond_0
    return-wide p1
.end method
