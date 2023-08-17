.class final Lio/netty/util/internal/svm/CleanerJava6Substitution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/oracle/svm/core/annotate/TargetClass;
    className = "io.netty.util.internal.CleanerJava6"
.end annotation


# static fields
.field private static CLEANER_FIELD_OFFSET:J
    .annotation runtime Lcom/oracle/svm/core/annotate/Alias;
    .end annotation

    .annotation runtime Lcom/oracle/svm/core/annotate/RecomputeFieldValue;
        declClassName = "java.nio.DirectByteBuffer"
        kind = .enum Lcom/oracle/svm/core/annotate/RecomputeFieldValue$Kind;->FieldOffset:Lcom/oracle/svm/core/annotate/RecomputeFieldValue$Kind;
        name = "cleaner"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
