.class public interface abstract Lcom/fasterxml/jackson/core/SerializableString;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract appendQuoted([CI)I
.end method

.method public abstract appendQuotedUTF8([BI)I
.end method

.method public abstract appendUnquoted([CI)I
.end method

.method public abstract appendUnquotedUTF8([BI)I
.end method

.method public abstract asQuotedChars()[C
.end method

.method public abstract asQuotedUTF8()[B
.end method

.method public abstract asUnquotedUTF8()[B
.end method

.method public abstract charLength()I
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract putQuotedUTF8(Ljava/nio/ByteBuffer;)I
.end method

.method public abstract putUnquotedUTF8(Ljava/nio/ByteBuffer;)I
.end method

.method public abstract writeQuotedUTF8(Ljava/io/OutputStream;)I
.end method

.method public abstract writeUnquotedUTF8(Ljava/io/OutputStream;)I
.end method
