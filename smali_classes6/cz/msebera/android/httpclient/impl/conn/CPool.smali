.class Lcz/msebera/android/httpclient/impl/conn/CPool;
.super Lcz/msebera/android/httpclient/pool/AbstractConnPool;
.source "SourceFile"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/AbstractConnPool<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
        "Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final timeToLive:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/CPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/pool/ConnFactory;IIJLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/ConnFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;-><init>(Lcz/msebera/android/httpclient/pool/ConnFactory;II)V

    new-instance p1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class p2, Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iput-wide p4, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->timeToLive:J

    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public createEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    .locals 10

    sget-object v0, Lcz/msebera/android/httpclient/impl/conn/CPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-wide v7, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->timeToLive:J

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->timeUnit:Ljava/util/concurrent/TimeUnit;

    move-object v2, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v9}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 0

    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    check-cast p2, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/CPool;->createEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    move-result-object p1

    return-object p1
.end method

.method public enumAvailable(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->enumAvailable(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V

    return-void
.end method

.method public enumLeased(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->enumLeased(Lcz/msebera/android/httpclient/pool/PoolEntryCallback;)V

    return-void
.end method

.method public validate(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Z
    .locals 0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpConnection;->isStale()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic validate(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z
    .locals 0

    check-cast p1, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/CPool;->validate(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Z

    move-result p1

    return p1
.end method
