.class public Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;",
        "",
        "()V",
        "mIsFoldSupportHideNavigationBar",
        "",
        "getMIsFoldSupportHideNavigationBar",
        "()Z",
        "setMIsFoldSupportHideNavigationBar",
        "(Z)V",
        "isFoldSupportHideNavigationBar",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mIsFoldSupportHideNavigationBar:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMIsFoldSupportHideNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;->mIsFoldSupportHideNavigationBar:Z

    return v0
.end method

.method public isFoldSupportHideNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;->mIsFoldSupportHideNavigationBar:Z

    return v0
.end method

.method public final setMIsFoldSupportHideNavigationBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;->mIsFoldSupportHideNavigationBar:Z

    return-void
.end method
