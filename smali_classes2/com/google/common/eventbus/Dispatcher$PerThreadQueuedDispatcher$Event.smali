.class final Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# instance fields
.field private final event:Ljava/lang/Object;

.field private final subscribers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->event:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->subscribers:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;Lcom/google/common/eventbus/Dispatcher$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;)Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->subscribers:Ljava/util/Iterator;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->event:Ljava/lang/Object;

    return-object p0
.end method
