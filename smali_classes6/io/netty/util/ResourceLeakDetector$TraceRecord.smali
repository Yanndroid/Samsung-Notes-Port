.class Lio/netty/util/ResourceLeakDetector$TraceRecord;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ResourceLeakDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceRecord"
.end annotation


# static fields
.field private static final BOTTOM:Lio/netty/util/ResourceLeakDetector$TraceRecord;

.field private static final serialVersionUID:J = 0x542bc121fc24b620L


# instance fields
.field private final hintString:Ljava/lang/String;

.field private final next:Lio/netty/util/ResourceLeakDetector$TraceRecord;

.field private final pos:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/util/ResourceLeakDetector$TraceRecord$1;

    invoke-direct {v0}, Lio/netty/util/ResourceLeakDetector$TraceRecord$1;-><init>()V

    sput-object v0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->BOTTOM:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->hintString:Ljava/lang/String;

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->next:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    const/4 v0, -0x1

    iput v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/util/ResourceLeakDetector$1;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/ResourceLeakDetector$TraceRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/netty/util/ResourceLeakDetector$TraceRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->hintString:Ljava/lang/String;

    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->next:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    iget p1, p1, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    return-void
.end method

.method public constructor <init>(Lio/netty/util/ResourceLeakDetector$TraceRecord;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    instance-of v0, p2, Lio/netty/util/ResourceLeakHint;

    if-eqz v0, :cond_0

    check-cast p2, Lio/netty/util/ResourceLeakHint;

    invoke-interface {p2}, Lio/netty/util/ResourceLeakHint;->toHintString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->hintString:Ljava/lang/String;

    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->next:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    iget p1, p1, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    return-void
.end method

.method public static synthetic access$100()Lio/netty/util/ResourceLeakDetector$TraceRecord;
    .locals 1

    sget-object v0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->BOTTOM:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    return-object v0
.end method

.method public static synthetic access$300(Lio/netty/util/ResourceLeakDetector$TraceRecord;)I
    .locals 0

    iget p0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    return p0
.end method

.method public static synthetic access$400(Lio/netty/util/ResourceLeakDetector$TraceRecord;)Lio/netty/util/ResourceLeakDetector$TraceRecord;
    .locals 0

    iget-object p0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->next:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->hintString:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "\tHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->hintString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$600()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_2
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
