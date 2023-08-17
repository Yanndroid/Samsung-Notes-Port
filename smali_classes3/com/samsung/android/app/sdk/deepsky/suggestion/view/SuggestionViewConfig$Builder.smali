.class public final Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0017\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0014\u0010\u001e\u001a\u00020\u00002\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000bJ\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u000fJ\u0014\u0010$\u001a\u00020\u00002\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000bJ\u0008\u0010%\u001a\u00020&H\u0002J\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0008J\u0014\u0010)\u001a\u00020\u00002\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000bJ\u000e\u0010+\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0008J\u0014\u0010,\u001a\u00020\u00002\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000bJ\u000e\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0005J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0008J\u000e\u00100\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0008J\u000e\u00101\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0008J\u000e\u00103\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0008J\u000e\u00104\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0008J\u000e\u00105\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0008R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0019\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u001b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\r\u00a8\u00066"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;",
        "",
        "suggestionItem",
        "Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;",
        "listItemView",
        "Landroid/widget/RemoteViews;",
        "(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Landroid/widget/RemoteViews;)V",
        "listMinHeight",
        "",
        "(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Landroid/widget/RemoteViews;I)V",
        "clickableIdList",
        "",
        "descriptionId",
        "Ljava/lang/Integer;",
        "enableLocalOnly",
        "",
        "enableSwipeDismiss",
        "Ljava/lang/Boolean;",
        "excludedDataIdList",
        "",
        "iconId",
        "includedDataIdList",
        "listView",
        "listViewId",
        "listViewItemId",
        "maxIdSize",
        "maxListItemVisibleCount",
        "maxSuggestionCount",
        "suggestionFromId",
        "titleId",
        "addClickableId",
        "clickableIds",
        "build",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;",
        "enableDrawLocalOnly",
        "enable",
        "setClickableId",
        "setDefaultViewId",
        "",
        "setDescriptionId",
        "resId",
        "setExcludedDataId",
        "ids",
        "setIconId",
        "setIncludedDataId",
        "setListView",
        "view",
        "setListViewId",
        "setListViewItemId",
        "setMaxListItemVisibleCount",
        "count",
        "setMaxSuggestionCount",
        "setSuggestionFromId",
        "setTitleId",
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
.field private clickableIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private descriptionId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private enableLocalOnly:Z

.field private enableSwipeDismiss:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private excludedDataIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private iconId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private includedDataIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final listItemView:Landroid/widget/RemoteViews;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listMinHeight:I

.field private listView:Landroid/widget/RemoteViews;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private listViewId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private listViewItemId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final maxIdSize:I

.field private maxListItemVisibleCount:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private maxSuggestionCount:I

.field private suggestionFromId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final suggestionItem:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private titleId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use Builder(suggestionItem: SuggestionItem, listItemView: RemoteViews, listItemMinHeight: Int)"
    .end annotation

    const-string/jumbo v0, "suggestionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listItemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "suggestionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listItemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->suggestionItem:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->listItemView:Landroid/widget/RemoteViews;

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->listMinHeight:I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setDefaultViewId()V

    const/16 p1, 0x2710

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->maxIdSize:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->maxSuggestionCount:I

    return-void
.end method

.method private final setDefaultViewId()V
    .locals 1

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$id;->sss_list_view_item_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setTitleId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$id;->sss_list_view_item_description:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setDescriptionId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$id;->sss_list_view_item_icon:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setIconId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$id;->sss_list_view_item_suggestion_from:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setSuggestionFromId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$id;->sss_list_view:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setListViewId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/R$id;->sss_list_view_item:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setListViewItemId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->addClickableId(Ljava/util/List;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    return-void
.end method


# virtual methods
.method public final addClickableId(Ljava/util/List;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clickableIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->clickableIdList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->clickableIdList:Ljava/util/List;

    return-object p0
.end method

.method public final build()Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;
    .locals 19
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->suggestionItem:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->suggestionItem:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSS:SuggestionViewConfig@Builder"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;

    iget-object v5, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->titleId:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->descriptionId:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->iconId:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->suggestionFromId:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->listViewId:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->listViewItemId:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v10

    iget-object v11, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->clickableIdList:Ljava/util/List;

    iget-object v12, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->listView:Landroid/widget/RemoteViews;

    iget-object v13, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->listItemView:Landroid/widget/RemoteViews;

    iget-object v14, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->maxListItemVisibleCount:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->enableSwipeDismiss:Ljava/lang/Boolean;

    const/16 v16, 0x0

    const/16 v17, 0x1001

    const/16 v18, 0x0

    const/4 v4, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->suggestionItem:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    iget v6, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->maxSuggestionCount:I

    iget-boolean v7, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->enableLocalOnly:Z

    const/4 v8, 0x0

    iget-object v2, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->includedDataIdList:Ljava/util/List;

    const/4 v3, 0x0

    const/16 v5, 0xa

    if-nez v2, :cond_0

    move-object v9, v3

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    move-object v9, v2

    :goto_1
    iget-object v2, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->excludedDataIdList:Ljava/util/List;

    if-nez v2, :cond_2

    move-object v10, v3

    goto :goto_3

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    move-object v10, v2

    :goto_3
    iget v11, v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->listMinHeight:I

    const/16 v12, 0x10

    const/4 v13, 0x0

    new-instance v2, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;

    move-object v3, v2

    move-object v5, v1

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfigImpl;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/view/SuggestionViewSpec;IZLandroid/os/Bundle;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final enableDrawLocalOnly(Z)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->enableLocalOnly:Z

    return-object p0
.end method

.method public final enableSwipeDismiss(Z)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->enableSwipeDismiss:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setClickableId(Ljava/util/List;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clickableIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->clickableIdList:Ljava/util/List;

    return-object p0
.end method

.method public final setDescriptionId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->descriptionId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setExcludedDataId(Ljava/util/List;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->maxIdSize:I

    if-le v0, v1, :cond_0

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->excludedDataIdList:Ljava/util/List;

    return-object p0
.end method

.method public final setIconId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->iconId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setIncludedDataId(Ljava/util/List;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->maxIdSize:I

    if-le v0, v1, :cond_0

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->includedDataIdList:Ljava/util/List;

    return-object p0
.end method

.method public final setListView(Landroid/widget/RemoteViews;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 1
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->listView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public final setListViewId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->listViewId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setListViewItemId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->listViewItemId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMaxListItemVisibleCount(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->maxListItemVisibleCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMaxSuggestionCount(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->maxSuggestionCount:I

    return-object p0
.end method

.method public final setSuggestionFromId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->suggestionFromId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setTitleId(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->titleId:Ljava/lang/Integer;

    return-object p0
.end method
