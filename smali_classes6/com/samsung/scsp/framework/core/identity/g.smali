.class public final synthetic Lcom/samsung/scsp/framework/core/identity/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/identity/PushInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/identity/PushInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/g;->a:Lcom/samsung/scsp/framework/core/identity/PushInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/g;->a:Lcom/samsung/scsp/framework/core/identity/PushInfo;

    check-cast p1, Lcom/samsung/scsp/framework/core/identity/PushInfo;

    invoke-static {v0, p1}, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->b(Lcom/samsung/scsp/framework/core/identity/PushInfo;Lcom/samsung/scsp/framework/core/identity/PushInfo;)Z

    move-result p1

    return p1
.end method
