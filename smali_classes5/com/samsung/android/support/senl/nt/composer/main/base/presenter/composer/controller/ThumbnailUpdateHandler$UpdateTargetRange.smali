.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateTargetRange"
.end annotation


# instance fields
.field private final mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

.field private final mUpdateTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mDisplayList:Ljava/util/List;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->updateTargetRange(IIII)V

    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public adjustEndRangeBiggerThan(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;->adjustEndRangeBiggerThan(Ljava/util/List;I)V

    return-void
.end method

.method public adjustRangeForce(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;->adjustForciblyRange(Ljava/util/List;I)V

    return-void
.end method

.method public containDisplayRange(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;->containRange(Ljava/util/List;I)Z

    move-result p1

    return p1
.end method

.method public containRange(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;->containRange(Ljava/util/List;I)Z

    move-result p1

    return p1
.end method

.method public getTargetRangeSize()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;->getRangeSize(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;->isValid(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public pollFromLargeSizeQueue()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mDisplayList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;->pollFromLargeSizeQueue(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTargetRange(IIII)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTargetRange# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mDisplayList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mDisplayList:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;->isSequential()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$SequentialRange;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$SequentialRange;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/b;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    :cond_1
    return-void
.end method

.method public updateTargetRange(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mUpdateTargetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mDisplayList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;->isSequential()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$NonSequentialRange;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$NonSequentialRange;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/a;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$UpdateTargetRange;->mRange:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler$RangeHelper;

    :cond_1
    return-void
.end method
