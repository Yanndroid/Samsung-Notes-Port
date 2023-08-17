.class public final synthetic Lcom/samsung/scsp/common/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Supplier;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/common/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/common/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/scsp/common/ContextFactory;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
