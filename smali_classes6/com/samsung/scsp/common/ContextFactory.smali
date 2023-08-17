.class public Lcom/samsung/scsp/common/ContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/common/ContextFactory$ContextHolder;
    }
.end annotation


# static fields
.field private static final contextHolder:Lcom/samsung/scsp/common/ContextFactory$ContextHolder;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;-><init>(Lcom/samsung/scsp/common/ContextFactory$1;)V

    sput-object v0, Lcom/samsung/scsp/common/ContextFactory;->contextHolder:Lcom/samsung/scsp/common/ContextFactory$ContextHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/common/ContextFactory;->lambda$attachApplicationContext$2(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static attachApplicationContext(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/scsp/common/ContextFactory;->contextHolder:Lcom/samsung/scsp/common/ContextFactory$ContextHolder;

    new-instance v1, Lcom/samsung/scsp/common/b;

    invoke-direct {v1, p0}, Lcom/samsung/scsp/common/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->access$202(Lcom/samsung/scsp/common/ContextFactory$ContextHolder;Lcom/samsung/scsp/framework/core/common/Supplier;)Lcom/samsung/scsp/framework/core/common/Supplier;

    new-instance v1, Lcom/samsung/scsp/common/a;

    invoke-direct {v1, p0}, Lcom/samsung/scsp/common/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->access$102(Lcom/samsung/scsp/common/ContextFactory$ContextHolder;Lcom/samsung/scsp/framework/core/common/Supplier;)Lcom/samsung/scsp/framework/core/common/Supplier;

    return-void
.end method

.method public static attachBaseContext(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/scsp/common/ContextFactory;->contextHolder:Lcom/samsung/scsp/common/ContextFactory$ContextHolder;

    new-instance v1, Lcom/samsung/scsp/common/c;

    invoke-direct {v1, p0}, Lcom/samsung/scsp/common/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->access$102(Lcom/samsung/scsp/common/ContextFactory$ContextHolder;Lcom/samsung/scsp/framework/core/common/Supplier;)Lcom/samsung/scsp/framework/core/common/Supplier;

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/common/ContextFactory;->lambda$attachApplicationContext$1(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/common/ContextFactory;->lambda$attachBaseContext$0(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/scsp/common/ContextFactory;->contextHolder:Lcom/samsung/scsp/common/ContextFactory$ContextHolder;

    invoke-static {v0}, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->access$200(Lcom/samsung/scsp/common/ContextFactory$ContextHolder;)Lcom/samsung/scsp/framework/core/common/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/scsp/framework/core/common/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public static getBaseContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/scsp/common/ContextFactory;->contextHolder:Lcom/samsung/scsp/common/ContextFactory$ContextHolder;

    invoke-static {v0}, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->access$100(Lcom/samsung/scsp/common/ContextFactory$ContextHolder;)Lcom/samsung/scsp/framework/core/common/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/scsp/framework/core/common/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private static synthetic lambda$attachApplicationContext$1(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$attachApplicationContext$2(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$attachBaseContext$0(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method
