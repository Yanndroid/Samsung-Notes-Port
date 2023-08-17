.class public Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;
.super Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/stt/view/layout/STTFloatingContainer;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasScrollable:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public onActionEnd()V
    .locals 0

    return-void
.end method

.method public onActionStart()V
    .locals 0

    return-void
.end method

.method public onLongPress()V
    .locals 0

    return-void
.end method
