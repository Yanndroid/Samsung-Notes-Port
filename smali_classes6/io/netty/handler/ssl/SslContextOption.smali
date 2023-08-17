.class public Lio/netty/handler/ssl/SslContextOption;
.super Lio/netty/util/AbstractConstant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/AbstractConstant<",
        "Lio/netty/handler/ssl/SslContextOption<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final pool:Lio/netty/util/ConstantPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ConstantPool<",
            "Lio/netty/handler/ssl/SslContextOption<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/SslContextOption$1;

    invoke-direct {v0}, Lio/netty/handler/ssl/SslContextOption$1;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/SslContextOption;->pool:Lio/netty/util/ConstantPool;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/util/AbstractConstant;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lio/netty/handler/ssl/SslContextOption$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslContextOption;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/SslContextOption;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0}, Lio/netty/util/ConstantPool;->nextId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/SslContextOption;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/SslContextOption;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0}, Lio/netty/util/ConstantPool;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextOption;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/handler/ssl/SslContextOption<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/netty/handler/ssl/SslContextOption;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0, p1}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object p0

    check-cast p0, Lio/netty/handler/ssl/SslContextOption;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/ssl/SslContextOption;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/handler/ssl/SslContextOption<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/netty/handler/ssl/SslContextOption;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object p0

    check-cast p0, Lio/netty/handler/ssl/SslContextOption;

    return-object p0
.end method


# virtual methods
.method public validate(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
