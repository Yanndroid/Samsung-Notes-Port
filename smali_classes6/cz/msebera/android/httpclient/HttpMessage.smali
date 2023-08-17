.class public interface abstract Lcz/msebera/android/httpclient/HttpMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addHeader(Lcz/msebera/android/httpclient/Header;)V
.end method

.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract containsHeader(Ljava/lang/String;)Z
.end method

.method public abstract getAllHeaders()[Lcz/msebera/android/httpclient/Header;
.end method

.method public abstract getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
.end method

.method public abstract getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;
.end method

.method public abstract getLastHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
.end method

.method public abstract getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
.end method

.method public abstract headerIterator()Lcz/msebera/android/httpclient/HeaderIterator;
.end method

.method public abstract headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;
.end method

.method public abstract removeHeader(Lcz/msebera/android/httpclient/Header;)V
.end method

.method public abstract removeHeaders(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Lcz/msebera/android/httpclient/Header;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setHeaders([Lcz/msebera/android/httpclient/Header;)V
.end method

.method public abstract setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
