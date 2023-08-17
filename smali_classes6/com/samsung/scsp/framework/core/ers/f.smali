.class public final synthetic Lcom/samsung/scsp/framework/core/ers/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/ers/DomainVo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/ers/DomainVo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/ers/f;->a:Lcom/samsung/scsp/framework/core/ers/DomainVo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/ers/f;->a:Lcom/samsung/scsp/framework/core/ers/DomainVo;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/ers/ErsImpl$1;->a(Lcom/samsung/scsp/framework/core/ers/DomainVo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
