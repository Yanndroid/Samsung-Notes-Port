.class public final Lio/netty/util/collection/ByteCollections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/collection/ByteCollections$UnmodifiableMap;,
        Lio/netty/util/collection/ByteCollections$EmptyMap;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Lio/netty/util/collection/ByteObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/ByteObjectMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/util/collection/ByteCollections$EmptyMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/collection/ByteCollections$EmptyMap;-><init>(Lio/netty/util/collection/ByteCollections$1;)V

    sput-object v0, Lio/netty/util/collection/ByteCollections;->EMPTY_MAP:Lio/netty/util/collection/ByteObjectMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyMap()Lio/netty/util/collection/ByteObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/collection/ByteObjectMap<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lio/netty/util/collection/ByteCollections;->EMPTY_MAP:Lio/netty/util/collection/ByteObjectMap;

    return-object v0
.end method

.method public static unmodifiableMap(Lio/netty/util/collection/ByteObjectMap;)Lio/netty/util/collection/ByteObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/collection/ByteObjectMap<",
            "TV;>;)",
            "Lio/netty/util/collection/ByteObjectMap<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;

    invoke-direct {v0, p0}, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;-><init>(Lio/netty/util/collection/ByteObjectMap;)V

    return-object v0
.end method
