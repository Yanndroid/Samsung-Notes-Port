.class public abstract Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static TAG:Ljava/lang/String; = "Page"


# instance fields
.field private final mPageIdx:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;->mPageIdx:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;->inflateLayout(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPageIdx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;->mPageIdx:I

    return v0
.end method

.method public abstract getPageName()Ljava/lang/String;
.end method

.method public abstract inflateLayout(Landroid/content/Context;)V
.end method
