.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field private mBeamController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;

.field private mContext:Landroid/content/Context;

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mShareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->mShareList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->mBeamController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->mShareList:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->mBeamController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->mShareList:Ljava/util/List;

    return-object p0
.end method
