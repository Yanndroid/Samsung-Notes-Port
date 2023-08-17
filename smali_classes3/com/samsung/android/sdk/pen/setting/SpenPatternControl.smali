.class Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPatterControl"


# instance fields
.field private mChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;

.field private mDataManager:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;

.field private mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

.field private final mPatternLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout$OnPatternChangeListener;

.field private mPenName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPatternLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout$OnPatternChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mDataManager:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->initDefaultPattern()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;)Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;

    return-object p0
.end method

.method private initDefaultPattern()V
    .locals 4

    const-string v0, "SpenPatterControl"

    const-string v1, "initDefaultPattern()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "mosaic1"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "mosaic2"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "mosaic3"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.MosaicPen"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setPatternInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Z

    return-void
.end method

.method private setPatternDataInLayout(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mDataManager:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->getResourceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mDataManager:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->getSizeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->setPatternList(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mDataManager:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mDataManager:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    return-void
.end method

.method public getResourceString(Ljava/lang/String;F)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mDataManager:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->getResource(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isPatternOwner(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPenName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setOnPatternChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;

    return-void
.end method

.method public setPattern(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPenName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setPatternDataInLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPenName:Ljava/lang/String;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setPatternInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mDataManager:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->setPatternInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPatternLayout(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPatternLayout() penName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPenName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPatterControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPatternLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout$OnPatternChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->setOnPatternChangedListener(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout$OnPatternChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPenName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setPatternDataInLayout(Ljava/lang/String;)Z

    return-void
.end method

.method public setResource(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->setPattern(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public setSize(FZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSize() size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPatterControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->setPatternSize(FZ)Z

    :cond_0
    return-void
.end method
