.class public final Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;
.super Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        ">.Info<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        ">;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0084\u0004\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001R\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00042\u00020\u0005B\u000f\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001b\u0008\u0016\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0002\u0010\nB\u001d\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;",
        "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;",
        "",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;",
        "sender",
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
        "(Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;)V",
        "type",
        "(Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Ljava/lang/Integer;)V",
        "data",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;",
        "(Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)V",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
            ")V"
        }
    .end annotation

    const-string v0, "sender"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;->this$0:Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;-><init>(Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;Lcom/samsung/android/support/senl/addons/base/common/IObservable;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
            "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sender"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;->this$0:Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;-><init>(Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;Lcom/samsung/android/support/senl/addons/base/common/IObservable;Ljava/lang/Object;Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;->this$0:Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;-><init>(Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;Lcom/samsung/android/support/senl/addons/base/common/IObservable;Ljava/lang/Object;Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)V

    return-void
.end method
