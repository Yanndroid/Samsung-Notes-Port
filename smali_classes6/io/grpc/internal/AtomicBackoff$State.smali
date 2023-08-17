.class public final Lio/grpc/internal/AtomicBackoff$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AtomicBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "State"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final savedValue:J

.field public final synthetic this$0:Lio/grpc/internal/AtomicBackoff;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/grpc/internal/AtomicBackoff;J)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/AtomicBackoff$State;->this$0:Lio/grpc/internal/AtomicBackoff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lio/grpc/internal/AtomicBackoff$State;->savedValue:J

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/internal/AtomicBackoff;JLio/grpc/internal/AtomicBackoff$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/AtomicBackoff$State;-><init>(Lio/grpc/internal/AtomicBackoff;J)V

    return-void
.end method


# virtual methods
.method public backoff()V
    .locals 7

    iget-wide v0, p0, Lio/grpc/internal/AtomicBackoff$State;->savedValue:J

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/internal/AtomicBackoff$State;->this$0:Lio/grpc/internal/AtomicBackoff;

    invoke-static {v2}, Lio/grpc/internal/AtomicBackoff;->access$100(Lio/grpc/internal/AtomicBackoff;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    iget-wide v3, p0, Lio/grpc/internal/AtomicBackoff$State;->savedValue:J

    invoke-virtual {v2, v3, v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lio/grpc/internal/AtomicBackoff;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lio/grpc/internal/AtomicBackoff$State;->this$0:Lio/grpc/internal/AtomicBackoff;

    invoke-static {v6}, Lio/grpc/internal/AtomicBackoff;->access$200(Lio/grpc/internal/AtomicBackoff;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "Increased {0} to {1}"

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public get()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/internal/AtomicBackoff$State;->savedValue:J

    return-wide v0
.end method
