.class Lio/grpc/internal/MessageFramer$OutputStreamAdapter;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MessageFramer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutputStreamAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/MessageFramer;


# direct methods
.method private constructor <init>(Lio/grpc/internal/MessageFramer;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->this$0:Lio/grpc/internal/MessageFramer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;-><init>(Lio/grpc/internal/MessageFramer;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;->this$0:Lio/grpc/internal/MessageFramer;

    invoke-static {v0, p1, p2, p3}, Lio/grpc/internal/MessageFramer;->access$400(Lio/grpc/internal/MessageFramer;[BII)V

    return-void
.end method
