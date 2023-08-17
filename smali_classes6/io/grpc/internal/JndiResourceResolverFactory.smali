.class final Lio/grpc/internal/JndiResourceResolverFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/JndiResourceResolverFactory$JndiRecordFetcher;,
        Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;,
        Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;
    }
.end annotation


# static fields
.field private static final JNDI_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/grpc/internal/JndiResourceResolverFactory;->initJndi()Ljava/lang/Throwable;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/JndiResourceResolverFactory;->JNDI_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lio/grpc/internal/JndiResourceResolverFactory;->JNDI_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method

.method private static initJndi()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "javax.naming.directory.InitialDirContext"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.sun.jndi.dns.DnsContextFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    return-object v0

    :catch_1
    move-exception v0

    return-object v0

    :catch_2
    move-exception v0

    return-object v0
.end method


# virtual methods
.method public newResourceResolver()Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/internal/JndiResourceResolverFactory;->unavailabilityCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;

    new-instance v1, Lio/grpc/internal/JndiResourceResolverFactory$JndiRecordFetcher;

    invoke-direct {v1}, Lio/grpc/internal/JndiResourceResolverFactory$JndiRecordFetcher;-><init>()V

    invoke-direct {v0, v1}, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;-><init>(Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;)V

    return-object v0
.end method

.method public unavailabilityCause()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    sget-object v0, Lio/grpc/internal/JndiResourceResolverFactory;->JNDI_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method
