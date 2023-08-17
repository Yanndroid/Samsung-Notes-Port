.class Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->getInputStreamFromHttpConn(Ljava/net/HttpURLConnection;I)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$timeout:I

.field public final synthetic val$urlConn:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils$1;->val$urlConn:Ljava/net/HttpURLConnection;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils$1;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/io/InputStream;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils$1;->val$urlConn:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils$1;->val$timeout:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->a(Ljava/net/HttpURLConnection;I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInputStreamFromHttpUri# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriFileUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils$1;->call()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
