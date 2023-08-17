.class public final synthetic Lcom/samsung/scsp/common/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Supplier;


# static fields
.field public static final synthetic a:Lcom/samsung/scsp/common/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/common/e;

    invoke-direct {v0}, Lcom/samsung/scsp/common/e;-><init>()V

    sput-object v0, Lcom/samsung/scsp/common/e;->a:Lcom/samsung/scsp/common/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/samsung/scsp/common/ContextFactory$ContextHolder;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
