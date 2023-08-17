.class public interface abstract Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CACHE_LINE_SIZE:I

.field public static final CPUs:I

.field public static final RECOMENDED_OFFER_BATCH:I

.field public static final RECOMENDED_POLL_BATCH:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "jctools.cacheLineSize"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->CACHE_LINE_SIZE:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->CPUs:I

    mul-int/lit8 v1, v0, 0x4

    sput v1, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    mul-int/lit8 v0, v0, 0x4

    sput v0, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->RECOMENDED_POLL_BATCH:I

    return-void
.end method
