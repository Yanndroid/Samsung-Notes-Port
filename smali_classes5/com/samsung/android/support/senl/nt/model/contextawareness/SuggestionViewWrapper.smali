.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;,
        Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;,
        Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnButtonClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnButtonClickListener:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnButtonClickListener;

.field private mOnExpiredListener:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;

.field private mOnSwipeDismissListener:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;

.field private mSuggestionView:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SuggestionViewWrapper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mOnButtonClickListener:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnButtonClickListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mOnExpiredListener:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mOnSwipeDismissListener:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;

    return-object p0
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mSuggestionView:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mSuggestionView:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mSuggestionView:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$1;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->setOnClickListener(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnSuggestionClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mSuggestionView:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$2;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->setOnExpiredListener(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnExpiredListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mSuggestionView:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$3;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->setOnDismissedListener(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;)V

    return-void
.end method


# virtual methods
.method public isSuggestionViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mSuggestionView:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGoneState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mSuggestionView:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->releaseViewConfig()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->setSuggestionViewVisibility(I)V

    return-void
.end method

.method public setOnButtonClickListener(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mOnButtonClickListener:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnButtonClickListener;

    return-void
.end method

.method public setOnExpiredListener(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mOnExpiredListener:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;

    return-void
.end method

.method public setOnSwipeDismissListener(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mOnSwipeDismissListener:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;

    return-void
.end method

.method public setSuggestionViewVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mSuggestionView:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public updateSuggestionView(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;Landroid/widget/RemoteViews;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;",
            "Landroid/widget/RemoteViews;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;->getSuggestionItem()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    move-result-object p1

    invoke-direct {v0, p1, p2, p6}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;-><init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;Landroid/widget/RemoteViews;I)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->addClickableId(Ljava/util/List;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setMaxSuggestionCount(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setMaxListItemVisibleCount(I)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->enableSwipeDismiss(Z)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setIncludedDataId(Ljava/util/List;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->setExcludedDataId(Ljava/util/List;)Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig$Builder;->build()Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->mSuggestionView:Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView;->setViewConfig(Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionViewConfig;)V

    return-void
.end method
