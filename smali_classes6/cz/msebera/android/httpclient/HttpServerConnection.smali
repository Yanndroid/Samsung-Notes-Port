.class public interface abstract Lcz/msebera/android/httpclient/HttpServerConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpConnection;


# virtual methods
.method public abstract flush()V
.end method

.method public abstract receiveRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
.end method

.method public abstract receiveRequestHeader()Lcz/msebera/android/httpclient/HttpRequest;
.end method

.method public abstract sendResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V
.end method

.method public abstract sendResponseHeader(Lcz/msebera/android/httpclient/HttpResponse;)V
.end method
