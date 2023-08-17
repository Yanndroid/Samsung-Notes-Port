.class public Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "M4aSerializableAtom"


# instance fields
.field public mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

.field private mNewSmtaAtomLength:I

.field private mNewSttdAtomLength:I

.field private mOldSmtaAtomLength:I

.field private mOldSttdAtomLength:I

.field private final mSTTDLengthHeaderBytes:[B

.field private final mSautDataBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mNewSttdAtomLength:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mOldSttdAtomLength:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mNewSmtaAtomLength:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mOldSmtaAtomLength:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mSTTDLengthHeaderBytes:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mSautDataBytes:[B

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aReader;->readFile()Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x73t
        0x74t
        0x74t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xct
        0x73t
        0x61t
        0x75t
        0x74t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private readAtom(J)Ljava/io/Serializable;
    .locals 7

    const-string v0, "M4aSerializableAtom"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    const/4 v4, 0x4

    :try_start_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-gez v5, :cond_0

    const-string p1, "readAtom: countRead is under 0"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v1

    :cond_0
    :try_start_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-wide/16 v5, 0x8

    add-long/2addr p1, v5

    invoke-virtual {v3, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-gez p1, :cond_1

    const-string p1, "readAtom: read2() countRead is under 0"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    return-object v1

    :cond_1
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual {p2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v5

    :try_start_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception p1

    :try_start_10
    invoke-virtual {v4, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception p1

    move-object v4, v1

    :goto_1
    :try_start_11
    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_5
    move-exception v5

    :try_start_12
    invoke-virtual {p2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_2

    :catchall_6
    move-exception p2

    :try_start_13
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v5
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v4, v1

    :goto_3
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :goto_4
    :try_start_15
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    :try_start_16
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2

    move-object v1, v4

    goto :goto_7

    :catchall_7
    move-exception p1

    :try_start_17
    throw p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :catchall_8
    move-exception p2

    if-eqz v3, :cond_2

    :try_start_18
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_5

    :catchall_9
    move-exception v3

    :try_start_19
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_5
    throw p2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    :catchall_a
    move-exception p1

    :try_start_1a
    throw p1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    :catchall_b
    move-exception p2

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    goto :goto_6

    :catchall_c
    move-exception v2

    :try_start_1c
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAtom: Error reading data from file "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-object v1
.end method

.method private readSTTData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/voicenote/common/util/TextData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    if-eqz v0, :cond_1

    const-string v1, "sttd"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->hasAtom(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getAtomPosition(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->readAtom(J)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateOuterAtomsLengths(Ljava/nio/channels/FileChannel;)V
    .locals 7

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getFileUdtaLength()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mOldSttdAtomLength:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mOldSmtaAtomLength:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mNewSttdAtomLength:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mNewSmtaAtomLength:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getFileMoovLength()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getFileUdtaLength()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getFileMoovLength()I

    move-result v3

    sub-int v3, v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOuterAtomsLengths: mAtomSizeChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "M4aSerializableAtom"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->setFileUdtaLength(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->setFileMoovLength(I)V

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getUdtaPos()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getMoovPos()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOuterAtomsLengths: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private writeSTTDataAndAuth(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/voicenote/common/util/TextData;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "saut"

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mSTTDLengthHeaderBytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mSautDataBytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    const-string v5, "smta"

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->hasAtom(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    const-string v7, "M4aSerializableAtom"

    if-nez v0, :cond_0

    const-string v0, "writeSTTDataAndAuth: cannot parse m4a smta data"

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    const-string v8, "sttd"

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->hasAtom(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v9, 0x8

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getAtomPosition(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getUdtaPos()J

    move-result-wide v11

    add-long/2addr v11, v9

    :goto_0
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getAtomPosition(Ljava/lang/String;)J

    move-result-wide v14

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getAtomLength(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mOldSmtaAtomLength:I

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    :try_start_0
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v13, Ljava/io/ObjectOutputStream;

    invoke-direct {v13, v10}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v0, p1

    :try_start_2
    invoke-interface {v13, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v13}, Ljava/io/ObjectOutput;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v13, v16

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v13, v16

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object/from16 v13, v16

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object/from16 v17, v0

    :try_start_6
    invoke-interface {v13}, Ljava/io/ObjectOutput;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v13, v0

    :try_start_7
    invoke-virtual {v6, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object v6, v0

    const/4 v13, 0x0

    :goto_2
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    move-object/from16 v16, v0

    :try_start_9
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v10, v0

    :try_start_a
    invoke-virtual {v6, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v16
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v13, 0x0

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeSTTDataAndAuth: cannot read serializable "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-nez v13, :cond_2

    const-string v0, "writeSTTDataAndAuth: sttdBytes is null"

    :goto_6
    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_2
    array-length v0, v13

    add-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mNewSttdAtomLength:I

    new-instance v0, Ljava/io/File;

    move-object/from16 v6, p2

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    :try_start_b
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v13, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v13}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getPath()Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v16, v14

    const-string v14, "r"

    invoke-direct {v10, v13, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :try_start_c
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v13, "rw"

    invoke-direct {v15, v0, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_15

    :try_start_d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    :try_start_e
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    :try_start_f
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getAtomLength(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mOldSttdAtomLength:I

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getAtomLength(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mOldSmtaAtomLength:I

    move-object v8, v4

    const-wide/16 v4, 0x0

    invoke-virtual {v14, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    const-wide/16 v19, 0x0

    move-object/from16 p1, v13

    move-object/from16 p2, v14

    move-wide/from16 v25, v16

    move-object/from16 v27, v15

    move-wide/from16 v15, v19

    move-wide/from16 v17, v11

    :try_start_10
    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v13

    cmp-long v0, v13, v4

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writeSTTDataAndAuth: transfer from start to sttd: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mNewSttdAtomLength:I

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object/from16 v13, p1

    :try_start_11
    invoke-virtual {v13, v11, v12}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v13, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v13, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mOldSttdAtomLength:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    int-to-long v14, v0

    add-long/2addr v11, v14

    move-object/from16 v3, p2

    :try_start_12
    invoke-virtual {v3, v11, v12}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v21

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v11

    move-wide/from16 v14, v25

    sub-long v23, v14, v11

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v24}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v11

    cmp-long v0, v11, v4

    if-gez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeSTTDataAndAuth: transfer from end of sttd to smta : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v14, v15}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    invoke-virtual {v13, v11, v12}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->hasAtom(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mOldSmtaAtomLength:I

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mSautDataBytes:[B

    array-length v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mNewSmtaAtomLength:I

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mNewSmtaAtomLength:I

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v13, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const-wide/16 v11, 0x4

    add-long/2addr v14, v11

    invoke-virtual {v3, v14, v15}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v21

    const-wide/16 v23, 0x8

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v24}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v11

    cmp-long v0, v11, v4

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSTTDataAndAuth: transfer Smta Header,ReservedData size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-wide/16 v11, 0x8

    add-long/2addr v14, v11

    invoke-virtual {v3, v14, v15}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_7

    :cond_6
    iget v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mOldSmtaAtomLength:I

    iput v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mNewSmtaAtomLength:I

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;->getAtomPosition(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v21

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v14

    sub-long v23, v11, v14

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v24}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v14

    cmp-long v0, v14, v4

    if-gez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSTTDataAndAuth: transfer Smta size, Header, ReservedData size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mSautDataBytes:[B

    array-length v0, v0

    int-to-long v14, v0

    add-long/2addr v11, v14

    invoke-virtual {v3, v11, v12}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_7
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    invoke-virtual {v13, v11, v12}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v13, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v21

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v11

    sub-long v23, v8, v11

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v24}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-gez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSTTDataAndAuth: transfer remaining bytes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-direct {v1, v13}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->updateOuterAtomsLengths(Ljava/nio/channels/FileChannel;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    :try_start_14
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    :try_start_15
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    :try_start_16
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3

    const-string v0, "writeSTTDataAndAuth: end"

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_7
    move-exception v0

    goto :goto_9

    :catchall_8
    move-exception v0

    goto :goto_8

    :catchall_9
    move-exception v0

    move-object/from16 v13, p1

    :goto_8
    move-object/from16 v3, p2

    goto :goto_9

    :catchall_a
    move-exception v0

    move-object v3, v14

    move-object/from16 v27, v15

    :goto_9
    move-object v2, v0

    :try_start_17
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    :catchall_b
    move-exception v0

    move-object v4, v0

    if-eqz v13, :cond_9

    :try_start_18
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    goto :goto_a

    :catchall_c
    move-exception v0

    move-object v5, v0

    :try_start_19
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_a
    throw v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_b

    :catchall_e
    move-exception v0

    move-object v3, v14

    move-object/from16 v27, v15

    :goto_b
    move-object v2, v0

    :try_start_1a
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    :catchall_f
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_a

    :try_start_1b
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    goto :goto_c

    :catchall_10
    move-exception v0

    move-object v3, v0

    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_c
    throw v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    :catchall_11
    move-exception v0

    goto :goto_d

    :catchall_12
    move-exception v0

    move-object/from16 v27, v15

    :goto_d
    move-object v2, v0

    :try_start_1d
    throw v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    :catchall_13
    move-exception v0

    move-object v3, v0

    :try_start_1e
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    goto :goto_e

    :catchall_14
    move-exception v0

    move-object v4, v0

    :try_start_1f
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    :catchall_15
    move-exception v0

    move-object v2, v0

    :try_start_20
    throw v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_16

    :catchall_16
    move-exception v0

    move-object v3, v0

    :try_start_21
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_17

    goto :goto_f

    :catchall_17
    move-exception v0

    move-object v4, v0

    :try_start_22
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v3
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_3

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeSTTDataAndAuth: Error writing atom to file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6
.end method


# virtual methods
.method public makeFileWithSTTData(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/voicenote/common/util/TextData;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->mInfo:Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aInfo;

    if-nez v0, :cond_0

    const-string p1, "M4aSerializableAtom"

    const-string p2, "write info is null !!!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aSerializableAtomHelper;->writeSTTDataAndAuth(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
