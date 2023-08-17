.class public Lcom/microsoft/identity/common/java/util/ClockSkewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/IClockSkewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/util/ClockSkewManager$PreferencesMetadata;
    }
.end annotation


# instance fields
.field private final mClockSkewStorage:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "storage is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ClockSkewManager;->mClockSkewStorage:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    return-void
.end method


# virtual methods
.method public getAdjustedReferenceTime()Ljava/util/Date;
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/util/ClockSkewManager;->getCurrentClientTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/identity/common/java/util/ClockSkewManager;->toReferenceTime(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentClientTime()Ljava/util/Date;
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSkewMillis()J
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ClockSkewManager;->mClockSkewStorage:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    const-string v1, "skew"

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public onTimestampReceived(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/util/ClockSkewManager;->getCurrentClientTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/microsoft/identity/common/java/util/ClockSkewManager;->mClockSkewStorage:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "skew"

    invoke-interface {p1, v0, p2}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toClientTime(J)Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/util/ClockSkewManager;->getSkewMillis()J

    move-result-wide v1

    add-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toReferenceTime(J)Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/util/ClockSkewManager;->getSkewMillis()J

    move-result-wide v1

    sub-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
