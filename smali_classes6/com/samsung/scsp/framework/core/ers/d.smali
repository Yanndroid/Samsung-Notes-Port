.class public final synthetic Lcom/samsung/scsp/framework/core/ers/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/ers/d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/ers/d;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;->a(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
