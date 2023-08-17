.class public final Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion$ColorInfoManagerHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u000fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;",
        "",
        "()V",
        "BRUSH_V6",
        "",
        "COLOR_PICKER_RECENT_COLOR",
        "COLOR_PICKER_RECENT_COLOR_NUM",
        "COLOR_PICKER_VIEW_MODE",
        "COLOR_SETTINGS",
        "RECENT_COLOR",
        "RECENT_COLOR_NUM",
        "RECENT_POSITION",
        "TAG",
        "getInstance",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;",
        "ColorInfoManagerHolder",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion$ColorInfoManagerHolder;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion$ColorInfoManagerHolder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager$Companion$ColorInfoManagerHolder;->getINSTANCE()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorInfoManager;

    move-result-object v0

    return-object v0
.end method
