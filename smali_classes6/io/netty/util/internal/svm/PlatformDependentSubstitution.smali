.class final Lio/netty/util/internal/svm/PlatformDependentSubstitution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/oracle/svm/core/annotate/TargetClass;
    className = "io.netty.util.internal.PlatformDependent"
.end annotation


# static fields
.field private static BYTE_ARRAY_BASE_OFFSET:J
    .annotation runtime Lcom/oracle/svm/core/annotate/Alias;
    .end annotation

    .annotation runtime Lcom/oracle/svm/core/annotate/RecomputeFieldValue;
        declClass = [B
        kind = .enum Lcom/oracle/svm/core/annotate/RecomputeFieldValue$Kind;->ArrayBaseOffset:Lcom/oracle/svm/core/annotate/RecomputeFieldValue$Kind;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
