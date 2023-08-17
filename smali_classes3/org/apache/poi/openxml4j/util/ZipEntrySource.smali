.class public interface abstract Lorg/apache/poi/openxml4j/util/ZipEntrySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getEntries()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
.end method

.method public abstract isClosed()Z
.end method
