.class public Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E2:",
        "Ljava/lang/Object;",
        "T2:",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info<",
        "TE2;TT2;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\t\u0008\u0096\u0004\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u000e\u0008\u0003\u0010\u0002*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B\u001d\u0008\u0016\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B7\u0008\u0016\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00018\u0002\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0002\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\n\u0010\u0013\u001a\u0004\u0018\u00010\rH\u0016J\u000f\u0010\u0014\u001a\u0004\u0018\u00018\u0002H\u0016\u00a2\u0006\u0002\u0010\u0015R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00018\u0002X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR:\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\u00062\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;",
        "E2",
        "T2",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;",
        "sender",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable;",
        "(Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;Lcom/samsung/android/support/senl/addons/base/common/IObservable;)V",
        "type",
        "data",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;",
        "(Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;Lcom/samsung/android/support/senl/addons/base/common/IObservable;Ljava/lang/Object;Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)V",
        "mData",
        "",
        "mType",
        "Ljava/lang/Object;",
        "<set-?>",
        "getSender",
        "()Lcom/samsung/android/support/senl/addons/base/common/IObservable;",
        "getData",
        "getId",
        "()Ljava/lang/Object;",
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
.field private mData:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mType:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE2;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sender:Lcom/samsung/android/support/senl/addons/base/common/IObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/addons/base/common/IObservable<",
            "TE2;TT2;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable<",
            "TE;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;Lcom/samsung/android/support/senl/addons/base/common/IObservable;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/common/IObservable<",
            "TE2;TT2;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->this$0:Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->mData:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->sender:Lcom/samsung/android/support/senl/addons/base/common/IObservable;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;Lcom/samsung/android/support/senl/addons/base/common/IObservable;Ljava/lang/Object;Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/common/IObservable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/common/IObservable<",
            "TE2;TT2;>;TE2;",
            "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData<",
            "TE2;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->this$0:Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->mData:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->sender:Lcom/samsung/android/support/senl/addons/base/common/IObservable;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->mType:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;->getId()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->mType:Ljava/lang/Object;

    if-eqz p4, :cond_2

    invoke-interface {p4}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;->getData()Ljava/lang/Object;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->mData:Ljava/lang/Object;

    :goto_1
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE2;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->mType:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSender()Lcom/samsung/android/support/senl/addons/base/common/IObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/addons/base/common/IObservable<",
            "TE2;TT2;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->sender:Lcom/samsung/android/support/senl/addons/base/common/IObservable;

    return-object v0
.end method
