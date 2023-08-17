.class public interface abstract Lcom/google/common/hash/Hasher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/PrimitiveSink;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation


# virtual methods
.method public abstract hash()Lcom/google/common/hash/HashCode;
.end method

.method public abstract hashCode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract putBoolean(Z)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putBoolean(Z)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public abstract putByte(B)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public abstract putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
.end method

.method public abstract putBytes([B)Lcom/google/common/hash/Hasher;
.end method

.method public abstract putBytes([BII)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public bridge abstract synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public bridge abstract synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public abstract putChar(C)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public abstract putDouble(D)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putDouble(D)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public abstract putFloat(F)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putFloat(F)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public abstract putInt(I)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public abstract putLong(J)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public abstract putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/hash/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/Hasher;"
        }
    .end annotation
.end method

.method public abstract putShort(S)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public abstract putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
.end method

.method public abstract putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;
.end method

.method public bridge abstract synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
.end method
