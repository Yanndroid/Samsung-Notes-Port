.class public Lcom/samsung/vsf/util/LogData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private date:Ljava/lang/String;

.field private id:I

.field private logs:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/vsf/util/LogData;->id:I

    iput-object p2, p0, Lcom/samsung/vsf/util/LogData;->time:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/vsf/util/LogData;->tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/vsf/util/LogData;->logs:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/vsf/util/LogData;->timeStamp:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/vsf/util/LogData;->date:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/util/LogData;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/vsf/util/LogData;->id:I

    return v0
.end method

.method public getLogs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/util/LogData;->logs:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/util/LogData;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/util/LogData;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/util/LogData;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/util/LogData;->date:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vsf/util/LogData;->id:I

    return-void
.end method

.method public setLogs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/util/LogData;->logs:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/util/LogData;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/util/LogData;->time:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/util/LogData;->timeStamp:Ljava/lang/String;

    return-void
.end method
