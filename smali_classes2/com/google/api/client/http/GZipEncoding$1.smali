.class Lcom/google/api/client/http/GZipEncoding$1;
.super Ljava/io/BufferedOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/http/GZipEncoding;->encode(Lcom/google/api/client/util/StreamingContent;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/client/http/GZipEncoding;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/GZipEncoding;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/GZipEncoding$1;->this$0:Lcom/google/api/client/http/GZipEncoding;

    invoke-direct {p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
