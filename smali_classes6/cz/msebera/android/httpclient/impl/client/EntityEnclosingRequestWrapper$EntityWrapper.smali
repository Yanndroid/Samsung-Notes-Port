.class Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntityWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->access$002(Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;Z)Z

    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->access$002(Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;Z)Z

    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->access$002(Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;Z)Z

    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
