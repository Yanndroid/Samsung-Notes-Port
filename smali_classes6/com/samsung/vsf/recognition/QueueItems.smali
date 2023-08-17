.class public Lcom/samsung/vsf/recognition/QueueItems;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/vsf/recognition/QueueItems;",
        ">;"
    }
.end annotation


# instance fields
.field public asrResult:Ljava/util/Properties;

.field public priority:I


# direct methods
.method public constructor <init>(ILjava/util/Properties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/vsf/recognition/QueueItems;->priority:I

    iput-object p2, p0, Lcom/samsung/vsf/recognition/QueueItems;->asrResult:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/vsf/recognition/QueueItems;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/vsf/recognition/QueueItems;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/vsf/recognition/QueueItems;->getPriority()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/vsf/recognition/QueueItems;

    invoke-virtual {p0, p1}, Lcom/samsung/vsf/recognition/QueueItems;->compareTo(Lcom/samsung/vsf/recognition/QueueItems;)I

    move-result p1

    return p1
.end method

.method public getASRResult()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/recognition/QueueItems;->asrResult:Ljava/util/Properties;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/samsung/vsf/recognition/QueueItems;->priority:I

    return v0
.end method
