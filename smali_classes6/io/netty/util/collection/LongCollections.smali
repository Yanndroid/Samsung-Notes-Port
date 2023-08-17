.class public final Lio/netty/util/collection/LongCollections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/collection/LongCollections$UnmodifiableMap;,
        Lio/netty/util/collection/LongCollections$EmptyMap;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Lio/netty/util/collection/LongObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/LongObjectMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/util/collection/LongCollections$EmptyMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/collection/LongCollections$EmptyMap;-><init>(Lio/netty/util/collection/LongCollections$1;)V

    sput-object v0, Lio/netty/util/collection/LongCollections;->EMPTY_MAP:Lio/netty/util/collection/LongObjectMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyMap()Lio/netty/util/collection/LongObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/collection/LongObjectMap<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lio/netty/util/collection/LongCollections;->EMPTY_MAP:Lio/netty/util/collection/LongObjectMap;

    return-object v0
.end method

.method public static unmodifiableMap(Lio/netty/util/collection/LongObjectMap;)Lio/netty/util/collection/LongObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/collection/LongObjectMap<",
            "TV;>;)",
            "Lio/netty/util/collection/LongObjectMap<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/collection/LongCollections$UnmodifiableMap;

    invoke-direct {v0, p0}, Lio/netty/util/collection/LongCollections$UnmodifiableMap;-><init>(Lio/netty/util/collection/LongObjectMap;)V

    return-object v0
.end method
