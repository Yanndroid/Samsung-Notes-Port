.class public final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->createView(Landroid/view/ViewGroup;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;ILjava/util/List;Ljava/util/List;)Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J$\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1",
        "Landroid/widget/BaseAdapter;",
        "getCount",
        "",
        "getItem",
        "",
        "position",
        "getItemId",
        "",
        "getView",
        "Landroid/view/View;",
        "view",
        "parent",
        "Landroid/view/ViewGroup;",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic $rvListViewItem:Landroid/widget/RemoteViews;

.field public final synthetic $suggestionCount:I

.field public final synthetic $viewSpec:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

.field public final synthetic $visibleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;ILandroid/widget/RemoteViews;Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;",
            ">;I",
            "Landroid/widget/RemoteViews;",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;",
            "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->$visibleIds:Ljava/util/List;

    iput p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->$suggestionCount:I

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->$rvListViewItem:Landroid/widget/RemoteViews;

    iput-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;

    iput-object p5, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->$viewSpec:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->$visibleIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->$suggestionCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->$visibleIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->$rvListViewItem:Landroid/widget/RemoteViews;

    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;

    invoke-static {p3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->access$getContext$p(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;)Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->$visibleIds:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl$createView$1;->$viewSpec:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    invoke-static {p3, p2, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;->access$assignText(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SurfacePackageUpdaterLocalImpl;Landroid/view/View;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;)V

    return-object p2
.end method
