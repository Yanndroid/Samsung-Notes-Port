.class public interface abstract Lcz/msebera/android/httpclient/protocol/HttpResponseInterceptorList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract addResponseInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V
.end method

.method public abstract addResponseInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;I)V
.end method

.method public abstract clearResponseInterceptors()V
.end method

.method public abstract getResponseInterceptor(I)Lcz/msebera/android/httpclient/HttpResponseInterceptor;
.end method

.method public abstract getResponseInterceptorCount()I
.end method

.method public abstract removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInterceptors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method
