.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/mode/IState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/mode/IState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/mode/IState;",
        "",
        "state",
        "",
        "getState",
        "()I",
        "setState",
        "(I)V",
        "isState",
        "",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/mode/IState$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_PROPERTY_STATE_CHANGED:I = 0x1f4

.field public static final STATE_DELIVER:I = 0x2

.field public static final STATE_DISCARD:I = 0x3

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_RESIZE:I = 0xa

.field public static final STATE_SAVING:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/mode/IState$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/mode/IState$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/mode/IState;->Companion:Lcom/samsung/android/support/senl/addons/base/model/mode/IState$Companion;

    return-void
.end method


# virtual methods
.method public abstract getState()I
.end method

.method public abstract isState(I)Z
.end method

.method public abstract setState(I)V
.end method
