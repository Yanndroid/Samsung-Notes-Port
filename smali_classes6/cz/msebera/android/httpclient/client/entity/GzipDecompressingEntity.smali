.class public Lcz/msebera/android/httpclient/client/entity/GzipDecompressingEntity;
.super Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 1

    invoke-static {}, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;->getInstance()Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V

    return-void
.end method
