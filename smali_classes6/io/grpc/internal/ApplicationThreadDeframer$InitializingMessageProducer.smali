.class Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/StreamListener$MessageProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ApplicationThreadDeframer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitializingMessageProducer"
.end annotation


# instance fields
.field private initialized:Z

.field private final runnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lio/grpc/internal/ApplicationThreadDeframer;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->initialized:Z

    iput-object p2, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Lio/grpc/internal/ApplicationThreadDeframer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;)V

    return-void
.end method

.method private initialize()V
    .locals 1

    iget-boolean v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->initialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->initialized:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public next()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->initialize()V

    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/ApplicationThreadDeframer;->access$100(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/ApplicationThreadDeframerListener;->messageReadQueuePoll()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
