.class public interface abstract Lcz/msebera/android/httpclient/HttpClientConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpConnection;


# virtual methods
.method public abstract flush()V
.end method

.method public abstract isResponseAvailable(I)Z
.end method

.method public abstract receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V
.end method

.method public abstract receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;
.end method

.method public abstract sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
.end method

.method public abstract sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V
.end method
