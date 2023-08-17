.class public Lcom/samsung/scsp/framework/core/ScspConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/ScspConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/scsp/framework/core/ScspConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/scsp/framework/core/ScspConfig;-><init>(Lcom/samsung/scsp/framework/core/ScspConfig$1;)V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig$Builder;->scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/scsp/framework/core/ScspConfig;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig$Builder;->scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;

    return-object v0
.end method

.method public enableHttp2(Z)Lcom/samsung/scsp/framework/core/ScspConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig$Builder;->scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;

    invoke-static {v0, p1}, Lcom/samsung/scsp/framework/core/ScspConfig;->access$102(Lcom/samsung/scsp/framework/core/ScspConfig;Z)Z

    return-object p0
.end method

.method public enableQuic(Z)Lcom/samsung/scsp/framework/core/ScspConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig$Builder;->scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;

    invoke-static {v0, p1}, Lcom/samsung/scsp/framework/core/ScspConfig;->access$202(Lcom/samsung/scsp/framework/core/ScspConfig;Z)Z

    return-object p0
.end method

.method public forceFallback(Z)Lcom/samsung/scsp/framework/core/ScspConfig$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig$Builder;->scspConfig:Lcom/samsung/scsp/framework/core/ScspConfig;

    invoke-static {v0, p1}, Lcom/samsung/scsp/framework/core/ScspConfig;->access$302(Lcom/samsung/scsp/framework/core/ScspConfig;Z)Z

    return-object p0
.end method
