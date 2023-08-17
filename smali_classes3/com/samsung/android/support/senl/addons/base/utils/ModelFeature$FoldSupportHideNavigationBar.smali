.class final Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$FoldSupportHideNavigationBar;
.super Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FoldSupportHideNavigationBar"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$FoldSupportHideNavigationBar;",
        "Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;->setMIsFoldSupportHideNavigationBar(Z)V

    return-void
.end method
