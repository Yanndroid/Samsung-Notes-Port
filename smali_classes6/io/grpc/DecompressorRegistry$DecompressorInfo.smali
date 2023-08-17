.class final Lio/grpc/DecompressorRegistry$DecompressorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/DecompressorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecompressorInfo"
.end annotation


# instance fields
.field public final advertised:Z

.field public final decompressor:Lio/grpc/Decompressor;


# direct methods
.method public constructor <init>(Lio/grpc/Decompressor;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "decompressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Decompressor;

    iput-object p1, p0, Lio/grpc/DecompressorRegistry$DecompressorInfo;->decompressor:Lio/grpc/Decompressor;

    iput-boolean p2, p0, Lio/grpc/DecompressorRegistry$DecompressorInfo;->advertised:Z

    return-void
.end method
