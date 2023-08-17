.class public Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConvertTaskGroup"


# instance fields
.field private mCallerId:I

.field private mGroupCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;

.field private mGroupId:I

.field private mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;",
            ">;II",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mTaskList:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mCallerId:I

    const/4 p3, -0x1

    if-ne p4, p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p4

    :cond_0
    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mGroupId:I

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, p4, v0, p5}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;-><init>(IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mGroupCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->initialize(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/AppWidgetUtils;->getWidgetUuidList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mGroupCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;

    invoke-static {p1, v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory;->createTaskWithValidCheck(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mTaskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mGroupCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->onPrepared()V

    return-void
.end method


# virtual methods
.method public getCallerId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mCallerId:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mGroupId:I

    return v0
.end method

.method public getTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mTaskList:Ljava/util/List;

    return-object v0
.end method

.method public setExternalCallback(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mGroupCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->setExternalCallback(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V

    return-void
.end method

.method public setStatusCallback(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;->mGroupCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$GroupTaskCallback;->setStatusCallback(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;)V

    return-void
.end method
