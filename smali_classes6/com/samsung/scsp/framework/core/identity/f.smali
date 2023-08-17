.class public final synthetic Lcom/samsung/scsp/framework/core/identity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/identity/PushInfoList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/f;->a:Lcom/samsung/scsp/framework/core/identity/PushInfoList;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/f;->a:Lcom/samsung/scsp/framework/core/identity/PushInfoList;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->a(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
