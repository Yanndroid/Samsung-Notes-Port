.class public final Lio/netty/util/collection/CharCollections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/collection/CharCollections$UnmodifiableMap;,
        Lio/netty/util/collection/CharCollections$EmptyMap;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Lio/netty/util/collection/CharObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/CharObjectMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/util/collection/CharCollections$EmptyMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/collection/CharCollections$EmptyMap;-><init>(Lio/netty/util/collection/CharCollections$1;)V

    sput-object v0, Lio/netty/util/collection/CharCollections;->EMPTY_MAP:Lio/netty/util/collection/CharObjectMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyMap()Lio/netty/util/collection/CharObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/collection/CharObjectMap<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lio/netty/util/collection/CharCollections;->EMPTY_MAP:Lio/netty/util/collection/CharObjectMap;

    return-object v0
.end method

.method public static unmodifiableMap(Lio/netty/util/collection/CharObjectMap;)Lio/netty/util/collection/CharObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/collection/CharObjectMap<",
            "TV;>;)",
            "Lio/netty/util/collection/CharObjectMap<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/collection/CharCollections$UnmodifiableMap;

    invoke-direct {v0, p0}, Lio/netty/util/collection/CharCollections$UnmodifiableMap;-><init>(Lio/netty/util/collection/CharObjectMap;)V

    return-object v0
.end method
