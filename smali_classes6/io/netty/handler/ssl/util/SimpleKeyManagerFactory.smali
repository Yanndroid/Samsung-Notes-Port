.class public abstract Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;
.super Ljavax/net/ssl/KeyManagerFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;
    }
.end annotation


# static fields
.field private static final CURRENT_SPI:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER:Ljava/security/Provider;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$1;

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v1}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;->PROVIDER:Ljava/security/Provider;

    new-instance v0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$2;

    invoke-direct {v0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$2;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;->CURRENT_SPI:Lio/netty/util/concurrent/FastThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;->CURRENT_SPI:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/KeyManagerFactorySpi;

    sget-object v2, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;->PROVIDER:Ljava/security/Provider;

    const-string v3, "name"

    invoke-static {p1, v3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;

    invoke-virtual {p1, p0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->init(Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;)V

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->remove()V

    return-void
.end method


# virtual methods
.method public abstract engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
.end method

.method public abstract engineInit(Ljava/security/KeyStore;[C)V
.end method

.method public abstract engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
.end method
