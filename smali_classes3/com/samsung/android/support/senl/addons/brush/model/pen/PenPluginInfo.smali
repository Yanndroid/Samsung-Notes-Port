.class public final Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;",
        "",
        "()V",
        "<set-?>",
        "",
        "penName",
        "getPenName",
        "()Ljava/lang/String;",
        "penObject",
        "Lcom/samsung/android/sdk/pen/pen/SpenPen;",
        "getPenObject",
        "()Lcom/samsung/android/sdk/pen/pen/SpenPen;",
        "setPenObject",
        "(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V",
        "close",
        "",
        "setName",
        "penInfo",
        "Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;",
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
.field private penName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private penObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->penName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->penObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    return-void
.end method

.method public final getPenName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->penName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->penObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    return-object v0
.end method

.method public final setName(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->penName:Ljava/lang/String;

    return-void
.end method

.method public final setPenObject(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/pen/SpenPen;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginInfo;->penObject:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    return-void
.end method
