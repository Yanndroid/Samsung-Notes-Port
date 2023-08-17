.class public abstract Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity;
.super Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0014J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0008H\u0014J\u0008\u0010\n\u001a\u00020\u0008H\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity;",
        "Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;",
        "()V",
        "createView",
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;",
        "getViewTag",
        "",
        "initialize",
        "",
        "onDestroy",
        "onResume",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity;->Companion:Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity$Companion;

    const-string v0, "BrushActivity"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createView()Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;-><init>()V

    return-object v0
.end method

.method public getViewTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/BrushView$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->initialize()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/util/BrushToastHandler;->close()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->onResume()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/AbsBrushActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume() - forceHideSoftInput"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->forceHideSoftInput(Landroid/content/Context;)Z

    return-void
.end method
