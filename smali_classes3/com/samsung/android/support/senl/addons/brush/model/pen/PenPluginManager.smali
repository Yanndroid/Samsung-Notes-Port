.class public final Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ.\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0010\u0010\u001a\u00060\u0011j\u0002`\u00122\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006J\u0008\u0010\u0015\u001a\u00020\nH\u0002J\u0010\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0008J\u001a\u0010\u0018\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;",
        "",
        "()V",
        "mPenPluginInfoList",
        "Ljava/util/ArrayList;",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;",
        "Lkotlin/collections/ArrayList;",
        "mSpenManager",
        "Lcom/samsung/android/sdk/pen/pen/SpenPenManager;",
        "close",
        "",
        "enableAlpha",
        "model",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;",
        "penName",
        "",
        "penInfoBuilder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "penPluginInfo",
        "getPenPluginInfoList",
        "initPenPlugin",
        "initialize",
        "manager",
        "loadPenObject",
        "updatePenInfo",
        "Companion",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mPenPluginInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSpenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager$Companion;

    const-string v0, "PenPluginManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method private final enableAlpha(Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;)V
    .locals 1

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenAttribute(I)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;->enableAlpha()V

    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private final initPenPlugin()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mSpenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->getPenInfoList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;-><init>()V

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->setName(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init pen : #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final loadPenObject(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mSpenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPreviewPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->setPenObject(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePenInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mSpenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPreviewPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->close()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mSpenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->close()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mSpenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    :cond_2
    return-void
.end method

.method public final getPenPluginInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final initialize(Lcom/samsung/android/sdk/pen/pen/SpenPenManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/pen/SpenPenManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mSpenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->initPenPlugin()V

    return-void
.end method

.method public final updatePenInfo(Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;)V
    .locals 5
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mSpenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/AbsPenModel;->getPenClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update pen info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v2

    const-string v4, "penPluginInfo"

    if-nez v2, :cond_2

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->loadPenObject(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;)V

    :cond_2
    const-string v2, "penInfoBuilder"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->enableAlpha(Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;)V

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
