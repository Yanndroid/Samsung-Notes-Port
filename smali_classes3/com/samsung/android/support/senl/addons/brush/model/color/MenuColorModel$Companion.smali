.class public final Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$Companion;",
        "",
        "()V",
        "POSTFIX_DESCRIPTION_SELECTED",
        "",
        "getPOSTFIX_DESCRIPTION_SELECTED",
        "()Ljava/lang/String;",
        "setPOSTFIX_DESCRIPTION_SELECTED",
        "(Ljava/lang/String;)V",
        "PREFIX_COLOR",
        "getPREFIX_COLOR",
        "setPREFIX_COLOR",
        "TAG",
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

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPOSTFIX_DESCRIPTION_SELECTED()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->access$getPOSTFIX_DESCRIPTION_SELECTED$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPREFIX_COLOR()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->access$getPREFIX_COLOR$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setPOSTFIX_DESCRIPTION_SELECTED(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->access$setPOSTFIX_DESCRIPTION_SELECTED$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setPREFIX_COLOR(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel;->access$setPREFIX_COLOR$cp(Ljava/lang/String;)V

    return-void
.end method
