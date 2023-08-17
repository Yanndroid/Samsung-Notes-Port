.class Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigData"
.end annotation


# instance fields
.field private final connectionConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/config/ConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private volatile defaultConnectionConfig:Lorg/apache/http/config/ConnectionConfig;

.field private volatile defaultSocketConfig:Lorg/apache/http/config/SocketConfig;

.field private final socketConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/config/SocketConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->socketConfigMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->connectionConfigMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getConnectionConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/ConnectionConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->connectionConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/config/ConnectionConfig;

    return-object p1
.end method

.method public getDefaultConnectionConfig()Lorg/apache/http/config/ConnectionConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->defaultConnectionConfig:Lorg/apache/http/config/ConnectionConfig;

    return-object v0
.end method

.method public getDefaultSocketConfig()Lorg/apache/http/config/SocketConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->defaultSocketConfig:Lorg/apache/http/config/SocketConfig;

    return-object v0
.end method

.method public getSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->socketConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/config/SocketConfig;

    return-object p1
.end method

.method public setConnectionConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->connectionConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->defaultConnectionConfig:Lorg/apache/http/config/ConnectionConfig;

    return-void
.end method

.method public setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->defaultSocketConfig:Lorg/apache/http/config/SocketConfig;

    return-void
.end method

.method public setSocketConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/SocketConfig;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->socketConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
