.class final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->requestSurfacePackage(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\n"
    }
    d2 = {
        "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
        "surfacePkg",
        "",
        "width",
        "height",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic $info:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

.field public final synthetic $this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

.field public final synthetic $updater:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$info:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$updater:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->invoke(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 4
    .param p1    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "surfacePkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received, SurfacePackage, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSS:SuggestionView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$setSurfaceViewLayoutParam(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Ljava/lang/Integer;I)V

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$releaseUpdaters(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)V

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getSurfaceView$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Landroid/view/SurfaceView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getSurfaceView$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Landroid/view/SurfaceView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$info:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$updater:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;

    invoke-static {p2, v2, v3, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$putUpdater(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$info:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

    invoke-static {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$setOnLayoutConsumer(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getLatestLayoutHeight$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p3, p1, :cond_1

    :goto_0
    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {p3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getLatestLayoutHeight$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_2

    move v0, p2

    :cond_2
    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getLatestLayoutHeight$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "received, different layoutHeight: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$info:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getLatestLayoutHeight$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->setHeight(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$updater:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$1;->$info:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;->relayout(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V

    :cond_3
    return-void
.end method
