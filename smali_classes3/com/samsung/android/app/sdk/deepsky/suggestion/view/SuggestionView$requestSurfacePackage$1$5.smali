.class final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
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
.field public final synthetic $this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$5;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$5;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    const-string v0, "SSS:SuggestionView"

    const-string v1, "dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$5;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getDismissedConsumer$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;->onDismissed()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$5;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$getSurfaceView$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$requestSurfacePackage$1$5;->$this_runCatching:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->access$setLatestConfig$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V

    return-void
.end method
