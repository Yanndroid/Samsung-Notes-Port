.class public Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlignmentParam"
.end annotation


# instance fields
.field public dockingSize:I

.field public mEndMargin:I

.field public mStartMargin:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->mStartMargin:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->mEndMargin:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->dockingSize:I

    return-void
.end method
