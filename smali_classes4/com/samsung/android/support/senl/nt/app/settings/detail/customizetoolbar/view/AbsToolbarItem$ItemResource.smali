.class public final Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem$ItemResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemResource"
.end annotation


# instance fields
.field public mExtraNameId:I

.field public mHasExtraName:Z

.field public mNameId:I

.field public mResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem$ItemResource;->mHasExtraName:Z

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem$ItemResource;->mNameId:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem$ItemResource;->mResId:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem$ItemResource;-><init>(II)V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem$ItemResource;->mExtraNameId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/AbsToolbarItem$ItemResource;->mHasExtraName:Z

    return-void
.end method
