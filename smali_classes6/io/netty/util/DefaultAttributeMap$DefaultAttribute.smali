.class final Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/Attribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/DefaultAttributeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "Lio/netty/util/Attribute<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final MAP_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute;",
            "Lio/netty/util/DefaultAttributeMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x24ef3b9fc599cf83L


# instance fields
.field private volatile attributeMap:Lio/netty/util/DefaultAttributeMap;

.field private final key:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    const-class v1, Lio/netty/util/DefaultAttributeMap;

    const-string v2, "attributeMap"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->MAP_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/DefaultAttributeMap;",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->attributeMap:Lio/netty/util/DefaultAttributeMap;

    iput-object p2, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    return-void
.end method

.method public static synthetic access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;
    .locals 0

    iget-object p0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    return-object p0
.end method

.method public static synthetic access$100(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z
    .locals 0

    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->isRemoved()Z

    move-result p0

    return p0
.end method

.method private isRemoved()Z
    .locals 1

    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->attributeMap:Lio/netty/util/DefaultAttributeMap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAndRemove()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->attributeMap:Lio/netty/util/DefaultAttributeMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->MAP_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    invoke-static {v0, v2, p0}, Lio/netty/util/DefaultAttributeMap;->access$200(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V

    :cond_1
    return-object v1
.end method

.method public key()Lio/netty/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/AttributeKey<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->attributeMap:Lio/netty/util/DefaultAttributeMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->MAP_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    iget-object v1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    invoke-static {v0, v1, p0}, Lio/netty/util/DefaultAttributeMap;->access$200(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V

    :cond_1
    return-void
.end method

.method public setIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    return-object v0
.end method
