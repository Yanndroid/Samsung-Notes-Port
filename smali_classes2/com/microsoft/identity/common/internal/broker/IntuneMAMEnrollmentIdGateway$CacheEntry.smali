.class final Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheEntry"
.end annotation


# instance fields
.field public final enrollmentId:Ljava/lang/String;

.field public final timestampMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;->enrollmentId:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;->timestampMs:J

    return-void
.end method


# virtual methods
.method public expired()Z
    .locals 6

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;->enrollmentId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x5dc

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7530

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/microsoft/identity/common/internal/broker/IntuneMAMEnrollmentIdGateway$CacheEntry;->timestampMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
