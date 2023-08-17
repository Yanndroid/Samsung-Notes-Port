.class public Lcom/samsung/android/sdk/smp/task/SMarketingTask;
.super Lcom/samsung/android/sdk/smp/task/STask;
.source "SourceFile"


# static fields
.field public static final EXTRA_MID:Ljava/lang/String; = "EXTRA_MID"


# instance fields
.field private final mMid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->mMid:Ljava/lang/String;

    return-void
.end method

.method public static isBasicMarketingTask(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->id()I

    move-result v0

    if-gt v0, p0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->id()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->mMid:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/task/STask;->getAction()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->mMid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingDisplayId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/task/STask;->getAction()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/smp/task/STask$Action;->id()I

    move-result p1

    rem-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    return p1

    :cond_0
    const p1, 0x895440

    return p1
.end method

.method public toBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/task/STask;->toBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->mMid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "EXTRA_MID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/task/STask;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "marketing_sub_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "-"

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/sdk/smp/task/STask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/sdk/smp/task/STask;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->mMid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
