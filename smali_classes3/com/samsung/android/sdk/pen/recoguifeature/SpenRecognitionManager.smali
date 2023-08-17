.class public abstract Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INPUT_TYPE_INDEX:I = 0x0

.field private static final OUTPUT_TYPE_INDEX:I = 0x1


# instance fields
.field private mPluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'context\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public createPluginObject(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognitionInterface;
    .locals 5

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->className:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p2, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->version:I

    iget v3, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    if-ne v2, v3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    invoke-virtual {p2, p1, v1, p3}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->loadPlugin(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognitionInterface;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ClassNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not find "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Recognition"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE : candidateList is not made yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroyPluginObject(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognitionInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->unloadPlugin(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE: Recognition Manager is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finalize()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public getInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    return-object v1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    const-string v4, "SpenRecognitionInterface"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->extraInfo:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;-><init>()V

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    iput-object v5, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->name:Ljava/lang/String;

    iget v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    iput v5, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->version:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->className:Ljava/lang/String;

    iget-boolean v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->hasPrivateKey:Z

    iput-boolean v5, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->hasPrivateKey:Z

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    iput-object v2, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->iconImageUri:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->inputType:I

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->outputType:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE: Recognition Manager is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInfoList(Ljava/lang/String;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    return-object v1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->extraInfo:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p2, v4, :cond_1

    if-ne p3, v3, :cond_1

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    const-string v6, "SpenRecognitionInterface"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;-><init>()V

    iget-object v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->name:Ljava/lang/String;

    iget v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    iput v6, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->version:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->className:Ljava/lang/String;

    iput v4, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->inputType:I

    iput v3, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->outputType:I

    iget-boolean v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->hasPrivateKey:Z

    iput-boolean v3, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->hasPrivateKey:Z

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    iput-object v2, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->iconImageUri:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE: Recognition Manager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInfoList(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    return-object v1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->extraInfo:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p2, v4, :cond_1

    if-ne p3, v3, :cond_1

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;-><init>()V

    iget-object v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->name:Ljava/lang/String;

    iget v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    iput v6, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->version:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->className:Ljava/lang/String;

    iput v4, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->inputType:I

    iput v3, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->outputType:I

    iget-boolean v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->hasPrivateKey:Z

    iput-boolean v3, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->hasPrivateKey:Z

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    iput-object v2, v5, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->iconImageUri:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE: Recognition Manager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    return-object v1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->interfaceName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->extraInfo:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;-><init>()V

    iget-object v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    iput-object v5, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->name:Ljava/lang/String;

    iget v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    iput v5, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->version:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->className:Ljava/lang/String;

    iget-boolean v5, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->hasPrivateKey:Z

    iput-boolean v5, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->hasPrivateKey:Z

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->iconImageUri:Ljava/lang/String;

    iput-object v2, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->iconImageUri:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->inputType:I

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->outputType:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "E_INVALID_STATE: Recognition Manager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivateKeyHint(Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->className:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->pluginNameUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->version:I

    iget v3, v1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->version:I

    if-ne v2, v3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPrivateKeyHint(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/recoguifeature/SpenRecognitionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Recognition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : candidateList is not made yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'info\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
