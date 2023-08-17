.class Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;
.super Lcz/msebera/android/httpclient/pool/AbstractConnPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/conn/HttpConnPool$InternalConnFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/AbstractConnPool<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        "Lcz/msebera/android/httpclient/conn/OperatedClientConnection;",
        "Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final timeToLive:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;IIJLjava/util/concurrent/TimeUnit;)V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool$InternalConnFactory;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool$InternalConnFactory;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;)V

    invoke-direct {p0, v0, p3, p4}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;-><init>(Lcz/msebera/android/httpclient/pool/ConnFactory;II)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iput-wide p5, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->timeToLive:J

    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public createEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .locals 10

    sget-object v0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-wide v7, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->timeToLive:J

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->timeUnit:Ljava/util/concurrent/TimeUnit;

    move-object v2, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v9}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 0

    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    check-cast p2, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->createEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object p1

    return-object p1
.end method
