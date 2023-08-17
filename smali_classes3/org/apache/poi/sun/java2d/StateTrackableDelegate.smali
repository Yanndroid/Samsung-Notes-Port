.class public final Lorg/apache/poi/sun/java2d/StateTrackableDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/java2d/StateTrackable;


# static fields
.field public static final IMMUTABLE_DELEGATE:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

.field public static final UNTRACKABLE_DELEGATE:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;


# instance fields
.field private numDynamicAgents:I

.field private theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

.field public theTracker:Lorg/apache/poi/sun/java2d/StateTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    invoke-direct {v0, v1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;)V

    sput-object v0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->UNTRACKABLE_DELEGATE:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    new-instance v0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->IMMUTABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    invoke-direct {v0, v1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;)V

    sput-object v0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->IMMUTABLE_DELEGATE:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    return-void
.end method

.method public static createInstance(Lorg/apache/poi/sun/java2d/StateTrackable$State;)Lorg/apache/poi/sun/java2d/StateTrackableDelegate;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate$2;->$SwitchMap$sun$java2d$StateTrackable$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->IMMUTABLE_DELEGATE:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string/jumbo v0, "unknown state"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->DYNAMIC:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    invoke-direct {p0, v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    invoke-direct {p0, v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;-><init>(Lorg/apache/poi/sun/java2d/StateTrackable$State;)V

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->UNTRACKABLE_DELEGATE:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addDynamicAgent()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->IMMUTABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    if-eq v0, v1, :cond_1

    iget v1, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->numDynamicAgents:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->numDynamicAgents:I

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->DYNAMIC:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    iput-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theTracker:Lorg/apache/poi/sun/java2d/StateTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change state from IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()Lorg/apache/poi/sun/java2d/StateTrackable$State;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    return-object v0
.end method

.method public declared-synchronized getStateTracker()Lorg/apache/poi/sun/java2d/StateTracker;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theTracker:Lorg/apache/poi/sun/java2d/StateTracker;

    if-nez v0, :cond_3

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackableDelegate$2;->$SwitchMap$sun$java2d$StateTrackable$State:[I

    iget-object v2, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/java2d/StateTracker;->ALWAYS_CURRENT:Lorg/apache/poi/sun/java2d/StateTracker;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate$1;-><init>(Lorg/apache/poi/sun/java2d/StateTrackableDelegate;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/poi/sun/java2d/StateTracker;->NEVER_CURRENT:Lorg/apache/poi/sun/java2d/StateTracker;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theTracker:Lorg/apache/poi/sun/java2d/StateTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final markDirty()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theTracker:Lorg/apache/poi/sun/java2d/StateTracker;

    return-void
.end method

.method public declared-synchronized removeDynamicAgent()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->numDynamicAgents:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->numDynamicAgents:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->DYNAMIC:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    iput-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theTracker:Lorg/apache/poi/sun/java2d/StateTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setImmutable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->DYNAMIC:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->IMMUTABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    iput-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theTracker:Lorg/apache/poi/sun/java2d/StateTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UNTRACKABLE or DYNAMIC objects cannot become IMMUTABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUntrackable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->IMMUTABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    iput-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theState:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->theTracker:Lorg/apache/poi/sun/java2d/StateTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IMMUTABLE objects cannot become UNTRACKABLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
