.class public Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_NAME:Ljava/lang/String; = "Invalid_name"

.field private static final TAG:Ljava/lang/String; = "M4aReader"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mPath:Ljava/lang/String;

    return-void
.end method

.method private arrToAscii([B)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p1, v2

    if-gez v3, :cond_1

    const-string p1, "Invalid_name"

    return-object p1

    :cond_1
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findCustomAtom(Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;Ljava/lang/String;J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x8

    add-long/2addr p3, v1

    invoke-virtual {v0, p3, p4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, ""

    :goto_0
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    int-to-long p3, p3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->arrToAscii([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sub-long/2addr p3, v1

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    add-long/2addr v3, p3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    move-object p3, v0

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p3

    sub-long/2addr p3, v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, p3, p4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-gez v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p2, v2, p3, p4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->putAtom(Ljava/lang/String;IJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "findSTTDAtom: Error reading the file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "M4aReader"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private findOuterAtoms(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;
    .locals 13

    sget-object v0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aConsts;->FILE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    new-instance v2, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;-><init>()V

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v1, :cond_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v5

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v6, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-gez v1, :cond_2

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v5

    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->arrToAscii([B)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    const-string v9, "mdat"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-wide/16 v9, 0x1

    cmp-long v9, v6, v9

    if-nez v9, :cond_4

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-gez v6, :cond_3

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v5

    :cond_3
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v8, 0x2

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    mul-int/2addr v8, v3

    int-to-long v8, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_5

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v9

    add-long/2addr v9, v6

    iget-object v11, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_5

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    :cond_5
    if-nez v8, :cond_6

    const-string v5, "M4aReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip value is 0 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "M4aReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong skip value finding OuterAtom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ! Returning from function"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-object v5

    :cond_7
    :try_start_9
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    const-wide/16 v6, 0x8

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->setPosition(J)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->getPosition()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-gez p1, :cond_8

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-object v5

    :cond_8
    :try_start_b
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->setLength(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->getPosition()J

    move-result-wide v3

    add-long/2addr v3, v6

    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p1

    const-string v1, "M4aReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading the file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p1
.end method

.method private isM4A()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->isM4A(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isM4A(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".m4a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public readFile()Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aConsts;->FILE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->isM4A()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mBuffer:Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mChannel:Ljava/nio/channels/FileChannel;

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;-><init>(Ljava/lang/String;)V

    const-string v4, "moov"

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->findOuterAtoms(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-object v2

    :cond_1
    :try_start_5
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->getLength()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->setFileMoovLength(I)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->getPosition()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->setMoovPos(J)V

    const-string v4, "udta"

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->findOuterAtoms(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-object v2

    :cond_2
    :try_start_8
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->getLength()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->setFileUdtaLength(I)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/AtomProperties;->getPosition()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->setUdtaPos(J)V

    const-string v4, "sttd"

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getUdtaPos()J

    move-result-wide v5

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->findCustomAtom(Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;Ljava/lang/String;J)V

    const-string v4, "smta"

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getUdtaPos()J

    move-result-wide v5

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->findCustomAtom(Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;Ljava/lang/String;J)V

    const-string v4, "smta"

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->hasAtom(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "smta"

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getAtomPosition(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "saut"

    const-wide/16 v7, 0x4

    add-long/2addr v4, v7

    invoke-direct {p0, v1, v6, v4, v5}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->findCustomAtom(Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;Ljava/lang/String;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_3
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v2, v1

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_c
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catch_0
    move-exception v1

    :try_start_d
    const-string v3, "M4aReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFile: IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v3, "M4aReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFile: FileNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v1
.end method
