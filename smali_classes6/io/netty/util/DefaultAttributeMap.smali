.class public Lio/netty/util/DefaultAttributeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final ATTRIBUTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/DefaultAttributeMap;",
            "[",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ATTRIBUTES:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;


# instance fields
.field private volatile attributes:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/netty/util/DefaultAttributeMap;

    const-class v1, [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    const-string v2, "attributes"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/DefaultAttributeMap;->ATTRIBUTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    new-array v0, v0, [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    sput-object v0, Lio/netty/util/DefaultAttributeMap;->EMPTY_ATTRIBUTES:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/netty/util/DefaultAttributeMap;->EMPTY_ATTRIBUTES:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    iput-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    return-void
.end method

.method public static synthetic access$200(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/util/DefaultAttributeMap;->removeAttributeIfMatch(Lio/netty/util/AttributeKey;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V

    return-void
.end method

.method private static orderedCopyOnInsert([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;I[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V
    .locals 3

    invoke-static {p3}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/AbstractConstant;->id()I

    move-result v0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    aget-object v1, p0, p1

    invoke-static {v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/util/AbstractConstant;->id()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    aget-object v2, p0, p1

    aput-object v2, p2, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    aput-object p3, p2, p1

    if-lez p1, :cond_2

    const/4 p3, 0x0

    invoke-static {p0, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private removeAttributeIfMatch(Lio/netty/util/AttributeKey;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<",
            "TT;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-static {v0, p1}, Lio/netty/util/DefaultAttributeMap;->searchAttributeByKey([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)I

    move-result v1

    if-gez v1, :cond_1

    return-void

    :cond_1
    aget-object v2, v0, v1

    if-eq v2, p2, :cond_2

    return-void

    :cond_2
    array-length v2, v0

    add-int/lit8 v3, v2, -0x1

    if-nez v3, :cond_3

    sget-object v3, Lio/netty/util/DefaultAttributeMap;->EMPTY_ATTRIBUTES:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    goto :goto_0

    :cond_3
    new-array v3, v3, [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    :goto_0
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_4

    add-int/lit8 v4, v1, 0x1

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    sget-object v1, Lio/netty/util/DefaultAttributeMap;->ATTRIBUTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private static searchAttributeByKey([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute;",
            "Lio/netty/util/AttributeKey<",
            "*>;)I"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_3

    add-int v4, v3, v0

    ushr-int/2addr v4, v1

    aget-object v5, p0, v4

    invoke-static {v5}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v5

    if-ne v5, p1, :cond_0

    return v4

    :cond_0
    invoke-virtual {v5}, Lio/netty/util/AbstractConstant;->id()I

    move-result v5

    invoke-virtual {p1}, Lio/netty/util/AbstractConstant;->id()I

    move-result v6

    if-ge v5, v6, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, -0x1

    move v0, v4

    goto :goto_0

    :cond_3
    add-int/2addr v3, v1

    neg-int p0, v3

    return p0
.end method


# virtual methods
.method public attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)",
            "Lio/netty/util/Attribute<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lio/netty/util/DefaultAttributeMap;->attributes:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-static {v1, p1}, Lio/netty/util/DefaultAttributeMap;->searchAttributeByKey([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)I

    move-result v2

    if-ltz v2, :cond_3

    aget-object v3, v1, v2

    invoke-static {v3}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$100(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v0, p0, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;)V

    :cond_2
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    aput-object v0, v3, v2

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v0, p0, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;)V

    :cond_4
    array-length v2, v1

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-static {v1, v2, v3, v0}, Lio/netty/util/DefaultAttributeMap;->orderedCopyOnInsert([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;I[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V

    :goto_0
    sget-object v2, Lio/netty/util/DefaultAttributeMap;->ATTRIBUTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public hasAttr(Lio/netty/util/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-static {v0, p1}, Lio/netty/util/DefaultAttributeMap;->searchAttributeByKey([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
