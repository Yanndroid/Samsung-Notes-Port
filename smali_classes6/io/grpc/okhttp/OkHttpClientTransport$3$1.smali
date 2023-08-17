.class Lio/grpc/okhttp/OkHttpClientTransport$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/OkHttpClientTransport$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/okhttp/OkHttpClientTransport$3;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport$3;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport$3$1;->this$1:Lio/grpc/okhttp/OkHttpClientTransport$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 0

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method
