.class public final Lkotlinx/coroutines/sync/MutexImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/sync/Mutex;
.implements Lkotlinx/coroutines/selects/SelectClause2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;,
        Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;,
        Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;,
        Lkotlinx/coroutines/sync/MutexImpl$LockCont;,
        Lkotlinx/coroutines/sync/MutexImpl$LockSelect;,
        Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/sync/Mutex;",
        "Lkotlinx/coroutines/selects/SelectClause2<",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/sync/Mutex;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u00112\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00110 :\u0006$%&\'()B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\n\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u000c\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJT\u0010\u0014\u001a\u00020\t\"\u0004\u0008\u0000\u0010\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\"\u0010\u0013\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0010H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u00020\u00012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0008J\u0019\u0010\u001a\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u00018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001dR\"\u0010#\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00110 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006*"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/MutexImpl;",
        "",
        "locked",
        "<init>",
        "(Z)V",
        "",
        "owner",
        "holdsLock",
        "(Ljava/lang/Object;)Z",
        "",
        "lock",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "lockSuspend",
        "R",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/sync/Mutex;",
        "Lkotlin/coroutines/Continuation;",
        "block",
        "registerSelectClause2",
        "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "tryLock",
        "unlock",
        "(Ljava/lang/Object;)V",
        "isLocked",
        "()Z",
        "isLockedEmptyQueueState$kotlinx_coroutines_core",
        "isLockedEmptyQueueState",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "getOnLock",
        "()Lkotlinx/coroutines/selects/SelectClause2;",
        "onLock",
        "LockCont",
        "LockSelect",
        "LockWaiter",
        "LockedQueue",
        "TryLockDesc",
        "UnlockOp",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/sync/MutexImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_LOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_UNLOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$lockSuspend(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/sync/MutexImpl;->lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    invoke-direct {v1, p0, p1, v0}, Lkotlinx/coroutines/sync/MutexImpl$LockCont;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    instance-of v3, v2, Lkotlinx/coroutines/sync/Empty;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/sync/Empty;

    iget-object v4, v3, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-eq v4, v5, :cond_1

    sget-object v4, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v5, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v3, v3, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-direct {v5, v3}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, p0, v2, v5}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_LOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v3

    goto :goto_1

    :cond_2
    new-instance v3, Lkotlinx/coroutines/sync/Empty;

    invoke-direct {v3, p1}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    :goto_1
    sget-object v4, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, p0, v2, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;

    invoke-direct {v2, p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto :goto_4

    :cond_3
    instance-of v3, v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v3, :cond_a

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v4, v3, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-eq v4, p1, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_9

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    iget-object v3, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    if-eq v3, v2, :cond_6

    invoke-virtual {v1}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->take()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    invoke-direct {v1, p0, p1, v0}, Lkotlinx/coroutines/sync/MutexImpl$LockCont;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    goto :goto_0

    :cond_6
    :goto_3
    invoke-static {v0, v1}, Lkotlinx/coroutines/CancellableContinuationKt;->removeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    :goto_4
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_7

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_7
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_8

    return-object p1

    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_9
    const-string p2, "Already locked by "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    instance-of v3, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v3, :cond_b

    check-cast v2, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Illegal state "

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getOnLock()Lkotlinx/coroutines/selects/SelectClause2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/sync/Mutex;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public holdsLock(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/sync/Empty;

    iget-object v0, v0, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v0, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method public isLocked()Z
    .locals 3

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/sync/Empty;

    iget-object v0, v0, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_2

    return v2

    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_3

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Illegal state "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final isLockedEmptyQueueState$kotlinx_coroutines_core()Z
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl;->tryLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/sync/MutexImpl;->lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public registerSelectClause2(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p1    # Lkotlinx/coroutines/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/sync/Mutex;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v2, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eq v2, v3, :cond_2

    sget-object v2, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v3, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, p0, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-void

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getLOCK_FAIL$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "performAtomicTrySelect(TryLockDesc) returned "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v2, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-eq v2, p2, :cond_8

    const/4 v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_a

    new-instance v2, Lkotlinx/coroutines/sync/MutexImpl$LockSelect;

    invoke-direct {v2, p0, p2, p1, p3}, Lkotlinx/coroutines/sync/MutexImpl$LockSelect;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    if-eq v1, v0, :cond_9

    invoke-virtual {v2}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->take()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-interface {p1, v2}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    return-void

    :cond_a
    const-string p1, "Already locked by "

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_c

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Illegal state "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const/16 v2, 0x5d

    const-string v3, "Mutex["

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lkotlinx/coroutines/sync/Empty;

    iget-object v0, v0, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v0, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Illegal state "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public tryLock(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-eq v1, v4, :cond_1

    return v3

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_LOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Lkotlinx/coroutines/sync/Empty;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    :goto_1
    sget-object v3, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_3
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_6

    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v0, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-eq v0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    return v3

    :cond_5
    const-string v0, "Already locked by "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_7

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal state "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const-string v2, " but expected "

    const-string v3, "Mutex is locked by "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    if-nez p1, :cond_3

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Mutex is not locked"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v6, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    if-ne v6, p1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    :goto_3
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_UNLOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_7

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_d

    if-eqz p1, :cond_a

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v6, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-ne v6, p1, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    :goto_4
    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeFirstOrNull()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    if-nez v2, :cond_b

    new-instance v2, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;-><init>(Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;)V

    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/internal/AtomicOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_b
    check-cast v2, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;

    invoke-virtual {v2}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->tryResumeLockWaiter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, v2, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->owner:Ljava/lang/Object;

    if-nez p1, :cond_c

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    :cond_c
    iput-object p1, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    invoke-virtual {v2}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->completeResumeLockWaiter()V

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal state "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
