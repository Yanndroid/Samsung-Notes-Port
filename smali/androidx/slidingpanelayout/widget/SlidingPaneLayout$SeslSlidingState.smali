.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeslSlidingState"
.end annotation


# instance fields
.field private mCurrentState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->mCurrentState:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->mCurrentState:I

    return v0
.end method

.method public onStateChanged(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->mCurrentState:I

    return-void
.end method
