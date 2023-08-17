.class public Lorg/apache/poi/sun/java2d/Disposer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final PHANTOM:I = 0x1

.field public static final WEAK:I

.field private static deferredRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/sun/java2d/DisposerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static disposerInstance:Lorg/apache/poi/sun/java2d/Disposer;

.field public static volatile pollingQueue:Z

.field private static final queue:Ljava/lang/ref/ReferenceQueue;

.field private static final records:Ljava/util/Hashtable;

.field public static refType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/java2d/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/java2d/Disposer;->records:Ljava/util/Hashtable;

    const/4 v0, 0x1

    sput v0, Lorg/apache/poi/sun/java2d/Disposer;->refType:I

    new-instance v1, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v2, "org.apache.poi.sun.java2d.reftype"

    invoke-direct {v1, v2}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v3, "weak"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput v2, Lorg/apache/poi/sun/java2d/Disposer;->refType:I

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Using WEAK refs"

    goto :goto_0

    :cond_0
    sput v0, Lorg/apache/poi/sun/java2d/Disposer;->refType:I

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Using PHANTOM refs"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lorg/apache/poi/sun/java2d/Disposer;

    invoke-direct {v0}, Lorg/apache/poi/sun/java2d/Disposer;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/java2d/Disposer;->disposerInstance:Lorg/apache/poi/sun/java2d/Disposer;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/sun/java2d/Disposer;->deferredRecords:Ljava/util/ArrayList;

    sput-boolean v2, Lorg/apache/poi/sun/java2d/Disposer;->pollingQueue:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addObjectRecord(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V
    .locals 3

    sget-object v0, Lorg/apache/poi/sun/java2d/Disposer;->records:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lorg/apache/poi/sun/java2d/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addRecord(Ljava/lang/Object;JJ)V
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/java2d/Disposer;->disposerInstance:Lorg/apache/poi/sun/java2d/Disposer;

    new-instance v1, Lorg/apache/poi/sun/java2d/DefaultDisposerRecord;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/apache/poi/sun/java2d/DefaultDisposerRecord;-><init>(JJ)V

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/sun/java2d/Disposer;->add(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V

    return-void
.end method

.method public static addRecord(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/java2d/Disposer;->disposerInstance:Lorg/apache/poi/sun/java2d/Disposer;

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/sun/java2d/Disposer;->add(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V

    return-void
.end method

.method public static addReference(Ljava/lang/ref/Reference;Lorg/apache/poi/sun/java2d/DisposerRecord;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/java2d/Disposer;->records:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static clearDeferredRecords()V
    .locals 3

    sget-object v0, Lorg/apache/poi/sun/java2d/Disposer;->deferredRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/sun/java2d/Disposer;->deferredRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    sget-object v1, Lorg/apache/poi/sun/java2d/Disposer;->deferredRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sun/java2d/DisposerRecord;

    invoke-interface {v1}, Lorg/apache/poi/sun/java2d/DisposerRecord;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exception while disposing deferred rec."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/sun/java2d/Disposer;->deferredRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_2
    return-void
.end method

.method public static getQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/java2d/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static pollRemove()V
    .locals 6

    sget-boolean v0, Lorg/apache/poi/sun/java2d/Disposer;->pollingQueue:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/poi/sun/java2d/Disposer;->pollingQueue:Z

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, Lorg/apache/poi/sun/java2d/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v4, 0x2710

    if-ge v1, v4, :cond_4

    const/16 v4, 0x64

    if-ge v2, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->clear()V

    sget-object v4, Lorg/apache/poi/sun/java2d/Disposer;->records:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sun/java2d/DisposerRecord;

    instance-of v4, v3, Lorg/apache/poi/sun/java2d/Disposer$PollDisposable;

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lorg/apache/poi/sun/java2d/DisposerRecord;->dispose()V

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    sget-object v4, Lorg/apache/poi/sun/java2d/Disposer;->deferredRecords:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lorg/apache/poi/sun/java2d/Disposer;->deferredRecords:Ljava/util/ArrayList;

    :cond_3
    sget-object v4, Lorg/apache/poi/sun/java2d/Disposer;->deferredRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    sput-boolean v0, Lorg/apache/poi/sun/java2d/Disposer;->pollingQueue:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exception while removing reference."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    sput-boolean v0, Lorg/apache/poi/sun/java2d/Disposer;->pollingQueue:Z

    throw v1
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lorg/apache/poi/sun/java2d/DisposerTarget;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/sun/java2d/DisposerTarget;

    invoke-interface {p1}, Lorg/apache/poi/sun/java2d/DisposerTarget;->getDisposerReferent()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    sget v0, Lorg/apache/poi/sun/java2d/Disposer;->refType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/ref/PhantomReference;

    sget-object v1, Lorg/apache/poi/sun/java2d/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lorg/apache/poi/sun/java2d/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    :goto_0
    sget-object p1, Lorg/apache/poi/sun/java2d/Disposer;->records:Ljava/util/Hashtable;

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 2

    :goto_0
    :try_start_0
    sget-object v0, Lorg/apache/poi/sun/java2d/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    sget-object v1, Lorg/apache/poi/sun/java2d/Disposer;->records:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/java2d/DisposerRecord;

    invoke-interface {v0}, Lorg/apache/poi/sun/java2d/DisposerRecord;->dispose()V

    invoke-static {}, Lorg/apache/poi/sun/java2d/Disposer;->clearDeferredRecords()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exception while removing reference."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
