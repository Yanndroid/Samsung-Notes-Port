.class public interface abstract Lorg/apache/poi/javax/imageio/stream/ImageInputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public abstract flushBefore(J)V
.end method

.method public abstract getBitOffset()I
.end method

.method public abstract getByteOrder()Ljava/nio/ByteOrder;
.end method

.method public abstract getFlushedPosition()J
.end method

.method public abstract getStreamPosition()J
.end method

.method public abstract isCached()Z
.end method

.method public abstract isCachedFile()Z
.end method

.method public abstract isCachedMemory()Z
.end method

.method public abstract length()J
.end method

.method public abstract mark()V
.end method

.method public abstract read()I
.end method

.method public abstract read([B)I
.end method

.method public abstract read([BII)I
.end method

.method public abstract readBit()I
.end method

.method public abstract readBits(I)J
.end method

.method public abstract readBoolean()Z
.end method

.method public abstract readByte()B
.end method

.method public abstract readBytes(Lorg/apache/poi/javax/imageio/stream/IIOByteBuffer;I)V
.end method

.method public abstract readChar()C
.end method

.method public abstract readDouble()D
.end method

.method public abstract readFloat()F
.end method

.method public abstract readFully([B)V
.end method

.method public abstract readFully([BII)V
.end method

.method public abstract readFully([CII)V
.end method

.method public abstract readFully([DII)V
.end method

.method public abstract readFully([FII)V
.end method

.method public abstract readFully([III)V
.end method

.method public abstract readFully([JII)V
.end method

.method public abstract readFully([SII)V
.end method

.method public abstract readInt()I
.end method

.method public abstract readLine()Ljava/lang/String;
.end method

.method public abstract readLong()J
.end method

.method public abstract readShort()S
.end method

.method public abstract readUTF()Ljava/lang/String;
.end method

.method public abstract readUnsignedByte()I
.end method

.method public abstract readUnsignedInt()J
.end method

.method public abstract readUnsignedShort()I
.end method

.method public abstract reset()V
.end method

.method public abstract seek(J)V
.end method

.method public abstract setBitOffset(I)V
.end method

.method public abstract setByteOrder(Ljava/nio/ByteOrder;)V
.end method

.method public abstract skipBytes(I)I
.end method

.method public abstract skipBytes(J)J
.end method
