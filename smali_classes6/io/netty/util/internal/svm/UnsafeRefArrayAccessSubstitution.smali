.class final Lio/netty/util/internal/svm/UnsafeRefArrayAccessSubstitution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/oracle/svm/core/annotate/TargetClass;
    className = "io.netty.util.internal.shaded.org.jctools.util.UnsafeRefArrayAccess"
.end annotation


# static fields
.field public static REF_ELEMENT_SHIFT:I
    .annotation runtime Lcom/oracle/svm/core/annotate/Alias;
    .end annotation

    .annotation runtime Lcom/oracle/svm/core/annotate/RecomputeFieldValue;
        declClass = [Ljava/lang/Object;
        kind = .enum Lcom/oracle/svm/core/annotate/RecomputeFieldValue$Kind;->ArrayIndexShift:Lcom/oracle/svm/core/annotate/RecomputeFieldValue$Kind;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
