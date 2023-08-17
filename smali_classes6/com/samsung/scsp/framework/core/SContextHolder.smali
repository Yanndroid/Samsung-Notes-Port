.class public Lcom/samsung/scsp/framework/core/SContextHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/SContextHolder$UserAgentFactory;
    }
.end annotation


# instance fields
.field public final isAccountRequiredFeature:Z

.field public network:Lcom/samsung/scsp/framework/core/network/Network;

.field public requestTimeOut:I

.field public scontext:Lcom/samsung/scsp/framework/core/SContext;

.field public final userAgent:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0xea60

    iput p1, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->requestTimeOut:I

    invoke-static {}, Lcom/samsung/scsp/framework/core/SContext;->getInstance()Lcom/samsung/scsp/framework/core/SContext;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    iput-object p3, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->userAgent:Ljava/lang/String;

    new-instance p1, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;

    invoke-direct {p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->network:Lcom/samsung/scsp/framework/core/network/Network;

    iput-boolean p4, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->isAccountRequiredFeature:Z

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    iput v0, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->requestTimeOut:I

    invoke-static {}, Lcom/samsung/scsp/framework/core/SContext;->getInstance()Lcom/samsung/scsp/framework/core/SContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-static {v0, p1, p2}, Lcom/samsung/scsp/framework/core/SContextHolder$UserAgentFactory;->access$000(Lcom/samsung/scsp/framework/core/SContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->userAgent:Ljava/lang/String;

    new-instance p1, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;

    invoke-direct {p1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->network:Lcom/samsung/scsp/framework/core/network/Network;

    iput-boolean p3, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->isAccountRequiredFeature:Z

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/SContextHolder;->version:Ljava/lang/String;

    return-void
.end method
