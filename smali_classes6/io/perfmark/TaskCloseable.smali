.class public final Lio/perfmark/TaskCloseable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final INSTANCE:Lio/perfmark/TaskCloseable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/perfmark/TaskCloseable;

    invoke-direct {v0}, Lio/perfmark/TaskCloseable;-><init>()V

    sput-object v0, Lio/perfmark/TaskCloseable;->INSTANCE:Lio/perfmark/TaskCloseable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-static {}, Lio/perfmark/PerfMark;->stopTask()V

    return-void
.end method
