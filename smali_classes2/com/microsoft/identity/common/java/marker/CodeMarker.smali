.class public Lcom/microsoft/identity/common/java/marker/CodeMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final csvNoValue:Ljava/lang/String; = "NA"

.field private static final csvSeparator:C = ','


# instance fields
.field private appRecv:Ljava/lang/String;

.field private appSent:Ljava/lang/String;

.field private battery:Ljava/lang/String;

.field private cpuTotal:Ljava/lang/String;

.field private cpuUsed:Ljava/lang/String;

.field private final marker:Ljava/lang/String;

.field private residentSize:Ljava/lang/String;

.field private systemDiskRead:Ljava/lang/String;

.field private systemDiskWrite:Ljava/lang/String;

.field private final threadId:J

.field private final timeInMilliseconds:J

.field private final timeStamp:Ljava/lang/String;

.field private virtualSize:Ljava/lang/String;

.field private wifiRecv:Ljava/lang/String;

.field private wifiSent:Ljava/lang/String;

.field private wwanRecv:Ljava/lang/String;

.field private wwanSent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->cpuUsed:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->cpuTotal:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->residentSize:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->virtualSize:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->wifiSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->wifiRecv:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->wwanSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->wwanRecv:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->appSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->appRecv:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->battery:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->systemDiskRead:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->systemDiskWrite:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->marker:Ljava/lang/String;

    iput-wide p2, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->timeInMilliseconds:J

    iput-object p4, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->timeStamp:Ljava/lang/String;

    iput-wide p5, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->threadId:J

    return-void
.end method

.method private getKeyValuePairsOfCodeMarker()Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->timeStamp:Ljava/lang/String;

    const-string v2, "NA"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const-string v3, "TimeStamp"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->marker:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    const-string v3, "Marker"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->timeInMilliseconds:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Time"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->threadId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Thread"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->cpuUsed:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    const-string v3, "CpuUsed"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->cpuTotal:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    const-string v3, "CpuTotal"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->residentSize:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    const-string v3, "ResidentSize"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->virtualSize:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object v1, v2

    :cond_5
    const-string v3, "VirtualSize"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->wifiSent:Ljava/lang/String;

    if-nez v1, :cond_6

    move-object v1, v2

    :cond_6
    const-string v3, "WifiSent"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->wifiRecv:Ljava/lang/String;

    if-nez v1, :cond_7

    move-object v1, v2

    :cond_7
    const-string v3, "WifiRecv"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->wwanSent:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v1, v2

    :cond_8
    const-string v3, "WwanSent"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->wwanRecv:Ljava/lang/String;

    if-nez v1, :cond_9

    move-object v1, v2

    :cond_9
    const-string v3, "WwanRecv"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->appSent:Ljava/lang/String;

    if-nez v1, :cond_a

    move-object v1, v2

    :cond_a
    const-string v3, "AppSent"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->appRecv:Ljava/lang/String;

    if-nez v1, :cond_b

    move-object v1, v2

    :cond_b
    const-string v3, "AppRecv"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->battery:Ljava/lang/String;

    if-nez v1, :cond_c

    move-object v1, v2

    :cond_c
    const-string v3, "Battery"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->systemDiskRead:Ljava/lang/String;

    if-nez v1, :cond_d

    move-object v1, v2

    :cond_d
    const-string v3, "SystemDiskRead"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/marker/CodeMarker;->systemDiskWrite:Ljava/lang/String;

    if-nez v1, :cond_e

    goto :goto_0

    :cond_e
    move-object v2, v1

    :goto_0
    const-string v1, "SystemDiskWrite"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getCsvHeader()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/marker/CodeMarker;->getKeyValuePairsOfCodeMarker()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCsvLine()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/marker/CodeMarker;->getKeyValuePairsOfCodeMarker()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
