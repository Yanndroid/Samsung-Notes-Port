.class public final Lio/netty/handler/codec/ProtocolDetectionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INVALID:Lio/netty/handler/codec/ProtocolDetectionResult;

.field private static final NEEDS_MORE_DATA:Lio/netty/handler/codec/ProtocolDetectionResult;


# instance fields
.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final state:Lio/netty/handler/codec/ProtocolDetectionState;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/netty/handler/codec/ProtocolDetectionResult;

    sget-object v1, Lio/netty/handler/codec/ProtocolDetectionState;->NEEDS_MORE_DATA:Lio/netty/handler/codec/ProtocolDetectionState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/ProtocolDetectionResult;-><init>(Lio/netty/handler/codec/ProtocolDetectionState;Ljava/lang/Object;)V

    sput-object v0, Lio/netty/handler/codec/ProtocolDetectionResult;->NEEDS_MORE_DATA:Lio/netty/handler/codec/ProtocolDetectionResult;

    new-instance v0, Lio/netty/handler/codec/ProtocolDetectionResult;

    sget-object v1, Lio/netty/handler/codec/ProtocolDetectionState;->INVALID:Lio/netty/handler/codec/ProtocolDetectionState;

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/ProtocolDetectionResult;-><init>(Lio/netty/handler/codec/ProtocolDetectionState;Ljava/lang/Object;)V

    sput-object v0, Lio/netty/handler/codec/ProtocolDetectionResult;->INVALID:Lio/netty/handler/codec/ProtocolDetectionResult;

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/ProtocolDetectionState;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/ProtocolDetectionState;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/ProtocolDetectionResult;->state:Lio/netty/handler/codec/ProtocolDetectionState;

    iput-object p2, p0, Lio/netty/handler/codec/ProtocolDetectionResult;->result:Ljava/lang/Object;

    return-void
.end method

.method public static detected(Ljava/lang/Object;)Lio/netty/handler/codec/ProtocolDetectionResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/netty/handler/codec/ProtocolDetectionResult<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/handler/codec/ProtocolDetectionResult;

    sget-object v1, Lio/netty/handler/codec/ProtocolDetectionState;->DETECTED:Lio/netty/handler/codec/ProtocolDetectionState;

    const-string v2, "protocol"

    invoke-static {p0, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/netty/handler/codec/ProtocolDetectionResult;-><init>(Lio/netty/handler/codec/ProtocolDetectionState;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static invalid()Lio/netty/handler/codec/ProtocolDetectionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/handler/codec/ProtocolDetectionResult<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/netty/handler/codec/ProtocolDetectionResult;->INVALID:Lio/netty/handler/codec/ProtocolDetectionResult;

    return-object v0
.end method

.method public static needsMoreData()Lio/netty/handler/codec/ProtocolDetectionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/handler/codec/ProtocolDetectionResult<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/netty/handler/codec/ProtocolDetectionResult;->NEEDS_MORE_DATA:Lio/netty/handler/codec/ProtocolDetectionResult;

    return-object v0
.end method


# virtual methods
.method public detectedProtocol()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/codec/ProtocolDetectionResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public state()Lio/netty/handler/codec/ProtocolDetectionState;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/ProtocolDetectionResult;->state:Lio/netty/handler/codec/ProtocolDetectionState;

    return-object v0
.end method
