.class public Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconBaseRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mPointerIconResolver:Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconBaseRelativeLayout;->mPointerIconResolver:Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconBaseRelativeLayout;->mPointerIconResolver:Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconBaseRelativeLayout;->mPointerIconResolver:Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;

    return-void
.end method


# virtual methods
.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconBaseRelativeLayout;->mPointerIconResolver:Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->onResolvePointerIcon(Landroid/view/View;Landroid/view/MotionEvent;ILandroid/view/PointerIcon;)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method
