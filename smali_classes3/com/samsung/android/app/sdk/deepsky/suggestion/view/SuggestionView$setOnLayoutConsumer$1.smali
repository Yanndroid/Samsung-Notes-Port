.class final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->setOnLayoutConsumer(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\n"
    }
    d2 = {
        "",
        "widthChanged",
        "heightChanged",
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

.field public final synthetic this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;->$info:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;->invoke(II)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(II)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout, view, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SSS:SuggestionView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getSurfaceView$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;->$info:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->getMinHeight()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {v3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getSurfaceView$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$resolveDrawingHeight(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;II)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$setSurfaceViewLayoutParam(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Ljava/lang/Integer;I)V

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$setOnLayoutConsumer$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getUpdaterHash$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLayout, request wh: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->setWidth(Ljava/lang/Integer;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;->setHeight(Ljava/lang/Integer;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdater;->relayout(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SurfaceViewInfo;)V

    goto :goto_1

    :cond_1
    return-void
.end method
