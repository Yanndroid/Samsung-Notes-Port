.class Lcom/samsung/scsp/common/ContextFactory$ContextHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/common/ContextFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextHolder"
.end annotation


# instance fields
.field private applicationContext:Lcom/samsung/scsp/framework/core/common/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/scsp/framework/core/common/Supplier<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private baseContext:Lcom/samsung/scsp/framework/core/common/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/scsp/framework/core/common/Supplier<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/scsp/common/e;->a:Lcom/samsung/scsp/common/e;

    iput-object v0, p0, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->baseContext:Lcom/samsung/scsp/framework/core/common/Supplier;

    sget-object v0, Lcom/samsung/scsp/common/d;->a:Lcom/samsung/scsp/common/d;

    iput-object v0, p0, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->applicationContext:Lcom/samsung/scsp/framework/core/common/Supplier;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/scsp/common/ContextFactory$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->lambda$new$1()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$100(Lcom/samsung/scsp/common/ContextFactory$ContextHolder;)Lcom/samsung/scsp/framework/core/common/Supplier;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->baseContext:Lcom/samsung/scsp/framework/core/common/Supplier;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/scsp/common/ContextFactory$ContextHolder;Lcom/samsung/scsp/framework/core/common/Supplier;)Lcom/samsung/scsp/framework/core/common/Supplier;
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->baseContext:Lcom/samsung/scsp/framework/core/common/Supplier;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/samsung/scsp/common/ContextFactory$ContextHolder;)Lcom/samsung/scsp/framework/core/common/Supplier;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->applicationContext:Lcom/samsung/scsp/framework/core/common/Supplier;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/samsung/scsp/common/ContextFactory$ContextHolder;Lcom/samsung/scsp/framework/core/common/Supplier;)Lcom/samsung/scsp/framework/core/common/Supplier;
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->applicationContext:Lcom/samsung/scsp/framework/core/common/Supplier;

    return-object p1
.end method

.method public static synthetic b()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->lambda$new$0()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$0()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$new$1()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
