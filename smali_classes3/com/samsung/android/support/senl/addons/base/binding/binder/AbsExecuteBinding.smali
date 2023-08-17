.class public abstract Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u0015*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0019\u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0019\u0010\u000f\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u0010\u001a\u00020\nH\u0016J\u001f\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000c\u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\nH\u0016R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;",
        "T",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;",
        "()V",
        "mChoreographer",
        "Landroid/view/Choreographer;",
        "kotlin.jvm.PlatformType",
        "mFrameCallback",
        "Landroid/view/Choreographer$FrameCallback;",
        "bind",
        "",
        "convertStringToData",
        "data",
        "",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "convertStringToRes",
        "execute",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;Ljava/lang/Object;)V",
        "unbind",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_COLOR:Ljava/lang/String; = "color"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_DIMEN:Ljava/lang/String; = "dimen"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_STRING:Ljava/lang/String; = "string"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->execute$lambda-0(Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;Ljava/lang/Object;J)V

    return-void
.end method

.method private static final execute$lambda-0(Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;Ljava/lang/Object;J)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->execute(Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->execute()V

    return-void
.end method

.method public convertStringToData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public convertStringToRes(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public execute()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getViewModelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getBindId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->convertStringToRes(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->convertStringToData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getBindId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getExecuteType()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/samsung/android/support/senl/addons/base/binding/binder/a;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/a;-><init>(Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->execute(Landroid/view/View;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public abstract execute(Landroid/view/View;Ljava/lang/Object;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public unbind()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->mChoreographer:Landroid/view/Choreographer;

    :cond_1
    return-void
.end method
