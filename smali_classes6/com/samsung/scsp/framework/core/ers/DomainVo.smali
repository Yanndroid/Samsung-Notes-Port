.class public Lcom/samsung/scsp/framework/core/ers/DomainVo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public defaultUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field public expiredTime:J

.field public playUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/scsp/framework/core/ers/DomainVo;->expiredTime:J

    return-void
.end method
