.class public interface abstract Lcz/msebera/android/httpclient/io/SessionInputBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getMetrics()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
.end method

.method public abstract isDataAvailable(I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract read()I
.end method

.method public abstract read([B)I
.end method

.method public abstract read([BII)I
.end method

.method public abstract readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
.end method

.method public abstract readLine()Ljava/lang/String;
.end method
