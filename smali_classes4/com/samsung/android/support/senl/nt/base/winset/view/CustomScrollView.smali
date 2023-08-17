.class public Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;
    }
.end annotation


# instance fields
.field private mScrollViewListener:Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView;->mScrollViewListener:Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView;->mScrollViewListener:Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView;->mScrollViewListener:Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;

    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView;->mScrollViewListener:Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;->onLayout(ZIIII)V

    :cond_0
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView;->mScrollViewListener:Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;->onScrollChanged(Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView;->mScrollViewListener:Lcom/samsung/android/support/senl/nt/base/winset/view/CustomScrollView$ScrollViewListener;

    return-void
.end method
