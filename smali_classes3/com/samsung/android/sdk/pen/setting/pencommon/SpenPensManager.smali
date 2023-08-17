.class Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

.field private mPenNumber:I

.field private final mPenPluginInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenPensManager"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    const-string p1, "SpenPenManager is not null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->initPenInfo()V

    return-void
.end method

.method private getPenInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method private initPenInfo()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->getPenInfoList()Ljava/util/List;

    move-result-object v0

    const-string v1, "SpenPensManager"

    if-nez v0, :cond_1

    const-string v0, "list is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenNumber:I

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->setName(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenNumber:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 6

    const-string v0, "SpenPensManager"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroy pen object. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPreviewPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroy preview pen object. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPreviewPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPreviewPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenNumber:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    :cond_3
    return-void
.end method

.method public getPenIndexByPenName(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPenInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSystemValidPen(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pen. ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenPensManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public loadPenObject(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->getPenInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "SpenPensManager"

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "penManager.createPen() -"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->setPenObject(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPreviewPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "penManager.createPreviewPen() -"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPreviewPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->setPreviewPenObject(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p2, "loadPenObject"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
