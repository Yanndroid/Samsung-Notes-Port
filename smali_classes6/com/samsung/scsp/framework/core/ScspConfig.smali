.class public Lcom/samsung/scsp/framework/core/ScspConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/ScspConfig$Builder;
    }
.end annotation


# instance fields
.field private enableHttp2:Z

.field private enableQuic:Z

.field private forceFallback:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig;->enableHttp2:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig;->enableQuic:Z

    iput-boolean v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig;->forceFallback:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/ScspConfig$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/scsp/framework/core/ScspConfig;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/samsung/scsp/framework/core/ScspConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/scsp/framework/core/ScspConfig;->enableHttp2:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/samsung/scsp/framework/core/ScspConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/scsp/framework/core/ScspConfig;->enableQuic:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/samsung/scsp/framework/core/ScspConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/scsp/framework/core/ScspConfig;->forceFallback:Z

    return p1
.end method


# virtual methods
.method public isEnableHttp2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig;->enableHttp2:Z

    return v0
.end method

.method public isEnableQuic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig;->enableQuic:Z

    return v0
.end method

.method public isForceFallback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/scsp/framework/core/ScspConfig;->forceFallback:Z

    return v0
.end method
