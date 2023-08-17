.class public final Lcom/samsung/scsp/framework/core/api/ApiContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;

.field public parameters:Lcom/samsung/scsp/framework/core/common/SCHashMap;

.field public payload:Ljava/lang/String;

.field public scontext:Lcom/samsung/scsp/framework/core/SContext;

.field public scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;


# direct methods
.method private constructor <init>(Lcom/samsung/scsp/framework/core/SContextHolder;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/scsp/framework/core/common/SCHashMap;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/common/SCHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/api/ApiContext;->parameters:Lcom/samsung/scsp/framework/core/common/SCHashMap;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/ApiContext;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/SContextHolder;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/ApiContext;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/api/ApiContext;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/scsp/framework/core/common/SCHashMap;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/common/SCHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/api/ApiContext;->parameters:Lcom/samsung/scsp/framework/core/common/SCHashMap;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/ApiContext;->name:Ljava/lang/String;

    return-void
.end method

.method public static create(Lcom/samsung/scsp/framework/core/SContextHolder;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/api/ApiContext;
    .locals 1

    new-instance v0, Lcom/samsung/scsp/framework/core/api/ApiContext;

    invoke-direct {v0, p0, p1}, Lcom/samsung/scsp/framework/core/api/ApiContext;-><init>(Lcom/samsung/scsp/framework/core/SContextHolder;Ljava/lang/String;)V

    return-object v0
.end method
