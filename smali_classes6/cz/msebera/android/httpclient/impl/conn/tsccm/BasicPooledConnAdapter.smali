.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;
.super Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->markReusable()V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 0

    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->detach()V

    return-void
.end method

.method public getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 1

    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;
    .locals 1

    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    return-object v0
.end method
