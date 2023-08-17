.class public final synthetic Lcom/samsung/scsp/framework/core/ers/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/ers/ErsImpl;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/ers/a;->a:Lcom/samsung/scsp/framework/core/ers/ErsImpl;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/ers/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/scsp/framework/core/ers/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/ers/a;->a:Lcom/samsung/scsp/framework/core/ers/ErsImpl;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/ers/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/ers/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->b(Lcom/samsung/scsp/framework/core/ers/ErsImpl;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
