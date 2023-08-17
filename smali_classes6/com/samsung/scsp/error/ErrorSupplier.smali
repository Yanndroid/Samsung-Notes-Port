.class public Lcom/samsung/scsp/error/ErrorSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;
    }
.end annotation


# static fields
.field private static final ERROR_SUPPLIER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/scsp/framework/core/common/Function<",
            "Ljava/lang/Throwable;",
            "Lcom/samsung/scsp/error/Result;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/scsp/error/ErrorSupplier;->ERROR_SUPPLIER_MAP:Ljava/util/Map;

    const-class v0, Lcom/samsung/scsp/framework/core/ScspException;

    sget-object v1, Lcom/samsung/scsp/error/a;->a:Lcom/samsung/scsp/error/a;

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/ErrorSupplier;->add(Ljava/lang/Class;Lcom/samsung/scsp/framework/core/common/Function;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)Lcom/samsung/scsp/error/Result;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/error/ErrorSupplier;->lambda$static$0(Ljava/lang/Throwable;)Lcom/samsung/scsp/error/Result;

    move-result-object p0

    return-object p0
.end method

.method public static add(Ljava/lang/Class;Lcom/samsung/scsp/framework/core/common/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/scsp/framework/core/common/Function<",
            "Ljava/lang/Throwable;",
            "Lcom/samsung/scsp/error/Result;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/scsp/error/ErrorSupplier;->ERROR_SUPPLIER_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static get(Ljava/lang/Throwable;)Lcom/samsung/scsp/error/Result;
    .locals 4

    new-instance v0, Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;

    invoke-direct {v0, p0}, Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;-><init>(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/samsung/scsp/error/ErrorSupplier;->ERROR_SUPPLIER_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/scsp/framework/core/common/Function;

    invoke-interface {v1, p0}, Lcom/samsung/scsp/framework/core/common/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/scsp/error/Result;

    invoke-static {v0, p0}, Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;->access$002(Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;Lcom/samsung/scsp/error/Result;)Lcom/samsung/scsp/error/Result;

    :cond_1
    invoke-static {v0}, Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;->access$000(Lcom/samsung/scsp/error/ErrorSupplier$ResultHolder;)Lcom/samsung/scsp/error/Result;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Throwable;)Lcom/samsung/scsp/error/Result;
    .locals 2

    new-instance v0, Lcom/samsung/scsp/error/Result;

    check-cast p0, Lcom/samsung/scsp/framework/core/ScspException;

    iget v1, p0, Lcom/samsung/scsp/framework/core/ScspException;->rcode:I

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/ScspException;->rmsg:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/samsung/scsp/error/Result;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
