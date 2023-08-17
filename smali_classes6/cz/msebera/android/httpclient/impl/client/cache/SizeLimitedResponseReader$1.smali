.class Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader$1;
.super Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->getReconstructedResponse()Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader$1;->this$0:Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;-><init>(Lcz/msebera/android/httpclient/HttpResponse;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader$1;->this$0:Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->access$000(Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method
